//
// Created by didi on 2017/10/30.
//

#include "exception_wrapper.h"

using namespace java::lang;

// public java.lang.String java.lang.Throwable.getMessage()
jniext::String Throwable::getMessage() const {
    static jniext::Method<jniext::String> method(clazz(), "getMessage", "()Ljava/lang/String;");
    return method.call(*this);
}

// public void java.lang.Throwable.printStackTrace()
void Throwable::printStackTrace() const {
    static jniext::Method<void> method(clazz(), "printStackTrace", "()V");
    method.call(*this);
}

const char *Throwable::clazz() {
    return "java/lang/Throwable";
}


Throwable Throwable::construct() {
    static jniext::Constructor<Throwable> constructor(clazz(), "()V");
    return constructor.construct();
}