package com.github.fabiosoaza.app

class NativeCall {

    companion object {
        init {
            System.loadLibrary("jni-example")
        }
    }


    external fun sayHello()

    external fun sumIntegers(first: Int, second: Int): Long

    external fun printMessage(message:String)
}