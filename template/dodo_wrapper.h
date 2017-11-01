//
// Created by didi on 2017/10/30.
//

#ifndef PROFILER_DODO_WRAPPER_H
#define PROFILER_DODO_WRAPPER_H

#include <jni.h>
#include "../fb/include/fb/fbjni.h"
#include <string>

using namespace facebook::jni;
namespace jniext {

    class String;

    class Class;

    class Object;

    template<typename T>
    class Array;

    class Object {
    protected:
        jobject ori_value;

        JNIEnv *env() const {
            return Environment::current();
        }


    public:
        Object(jobject value) : ori_value(value) {
        }

        operator jobject() const {
            return ori_value;
        }

        String toString() const;

        Class getClass() const;

        const char *clazz() const;
    };


    class String : public Object {
    public:
        using Object::Object;
        typedef std::basic_string<jchar> _jstring;

        static String create(const char *value);

        static String create(const std::string value);

        static String create(const jchar *value);

        static String create(const jchar *value, size_t length);

        static String create(const _jstring value);

        operator jstring() const {
            return (jstring) (jobject) *this;
        }

        jsize length() const {
            return env()->GetStringLength((jstring) *this);
        }

        std::string std_str() const {
            if (Environment::current()->IsSameObject((jobject) *this, NULL)) {
                return "";
            }
            const char *data = env()->GetStringUTFChars((jstring) *this, nullptr);
            std::string res = data;
            env()->ReleaseStringUTFChars((jstring) *this, data);
            return res;
        }

        _jstring std_jstr() const {
            const jchar *data = env()->GetStringChars((jstring) *this, nullptr);
            _jstring res = data;
            env()->ReleaseStringChars((jstring) *this, data);
            return res;
        }

        operator const std::string() const {
            return std_str();
        }

        operator const _jstring() const {
            return std_jstr();
        }

        bool operator==(const char *str) const {
            return std_str() == str;
        }

        bool operator!=(const char *str) const {
            return std_str() != str;
        }

        bool operator==(const jchar *str) const {
            return std_jstr() == str;
        }

        bool operator!=(const jchar *str) const {
            return std_jstr() != str;
        }

        static const char *clazz();
    };


    class Class : public Object {
    public:
        using Object::Object;

        static Class forName(const char *name);

        operator jclass() const {
            return (jclass) (jobject) *this;
        }

        String getName() const;

        Class getSuperclass() const;

        static const char *clazz();

    };

//////////////////////////method field/////////////////////////////////
//////////////////////////构造方法/////////////////////////////////


    template<typename R, typename... A>
    class Constructor {
    protected:
        jclass current_class;
        const char *_clsName;
        const char *_signature;
        mutable jmethodID _methodID;
    public:
        Constructor(const char *clsName, const char *signature) : current_class(nullptr),
                                                                  _clsName(clsName),
                                                                  _signature(signature),
                                                                  _methodID(0) {
        }

        jmethodID getMethodID() const {
            if (_methodID == nullptr) {
                JNIEnv *env = Environment::current();
                jclass cls = getClass();
                jmethodID res = env->GetMethodID(cls, "<init>", _signature);
                _methodID = res;
            }
            return _methodID;
        }

        jclass getClass() const {
            JNIEnv *env = Environment::current();
            jclass cls = current_class ? current_class : env->FindClass(_clsName);
            return cls;
        }

        operator jmethodID() const {
            return getMethodID();
        }

        operator jclass() const {
            return getClass();
        }

        R construct(A... args) const {
            return
                    Environment::current()->NewObject(getClass(), getMethodID(),
                                                      convertArg(args)...);
        }

        R operator()(A... args) const {
            return construct(args...);
        }
    };

    class MethodBase {
    protected:
        jclass current_class;
        const char *clsName;
        const char *method_name;
        const char *method_signature;
        mutable jmethodID _methodID;
    public:
        MethodBase(const char *clsName, const char *name, const char *signature) : current_class(
                nullptr),
                                                                                   clsName(
                                                                                           clsName),
                                                                                   method_name(
                                                                                           name),
                                                                                   method_signature(
                                                                                           signature),
                                                                                   _methodID(0) {
        }

        MethodBase(Class &cls, const char *name, const char *signature) : current_class(
                (jclass) (jobject) cls), clsName(nullptr), method_name(name), method_signature(
                signature),
                                                                          _methodID(0) {
        }

        jmethodID getMethodID() const {
            if (_methodID == nullptr) {
                JNIEnv *env = Environment::current();
                jclass cls = current_class ? current_class : env->FindClass(clsName);
                jmethodID res = env->GetMethodID(cls, method_name, method_signature);
                _methodID = res;
            }
            return _methodID;
        }

        operator jmethodID() const {
            return getMethodID();
        }
    };

    inline jstring convertArg(jstring value) {
        return value;
    }

    inline jobject convertArg(jobject value) {
        return value;
    }

    inline jclass convertArg(jclass value) {
        return value;
    }

    template<typename S>
    inline jobject convertArg(const S &value) {
        return (jobject) value;
    }


    template<typename R, typename... A>
    class Method : public MethodBase {
    public:
        using MethodBase::MethodBase;

        R call(jobject target, A... args) const {
            return (
                    Environment::current()->CallObjectMethod(target, getMethodID(),
                                                             convertArg(args)...));
        }

        R operator()(jobject target, A... args) const {
            return call(target, args...);
        }
    };

    template<typename... A>
    class Method<void, A...> : public MethodBase {
    public:
        using MethodBase::MethodBase;

        void call(jobject target, A... args) const {
            Environment::current()->CallVoidMethod(target, getMethodID(), convertArg(args)...);
        }

        void operator()(jobject target, A... args) const {
            call(target, args...);
        }
    };

////////////////////////////////实现/////////////////////////////////////
    inline String Object::toString() const {
        Method<String> method("java/lang/Object", "toString", "()Ljava/lang/String;");
        return method.call(*this);
    }

    inline Class Object::getClass() const {
        return env()->GetObjectClass((jobject) *this);
    }

    inline const char *Object::clazz() const {
        return "java/lang/Object";
    }

    inline String String::create(const char *value) {
        return (Environment::current()->NewStringUTF(value));
    }

    inline String String::create(const std::string value) {
        return (Environment::current()->NewStringUTF(value.c_str()));
    }

    inline String String::create(const jchar *value) {
        String::_jstring tmp = value;
        return create(value, tmp.length());
    }

    inline String String::create(const jchar *value, size_t length) {
        return (Environment::current()->NewString(value, length));
    }

    inline String String::create(const String::_jstring value) {
        return create(value.c_str(), value.length());
    }

    inline const char *String::clazz() {
        return "java/lang/String";
    }

    inline Class Class::forName(const char *name) {
        return (jobject) Environment::current()->FindClass(name);
    }

    inline String Class::getName() const {
        static Method<String> method("java/lang/Class", "getName", "()Ljava/lang/String;");
        return method.call(*this);
    }

    inline Class Class::getSuperclass() const {
        return (env()->GetSuperclass((jclass) *this));
    }

    inline const char *Class::clazz() {
        return "java/lang/Class";
    }
}
#endif //PROFILER_DODO_WRAPPER_H
