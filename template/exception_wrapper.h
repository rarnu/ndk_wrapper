//
// Created by didi on 2017/10/30.
//

#ifndef PROFILER_EXCEPTION_WRAPPER_H
#define PROFILER_EXCEPTION_WRAPPER_H
#pragma once

#include "dodo_wrapper.h"

namespace java {
    namespace lang {
        class Throwable;

        class Thread;

        class Throwable : public jniext::Object {
        public:
            using jniext::Object::Object;

            jniext::String getMessage() const;

            static Throwable construct();

            void printStackTrace() const;

            static const char *clazz();

        };

        class Thread : public jniext::Object {
        public:
            using jniext::Object::Object;

            static Thread currentThread();

            jniext::String getName() const;

            jlong getId() const;

            static const char *clazz();

        };

    }
}

#endif //PROFILER_EXCEPTION_WRAPPER_H
