package com.github.fabiosoaza.app

class Main {

    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            val call = NativeCall()
            call.sayHello()

            val first = 1
            val second = 2
            val sum: Long = call.sumIntegers(first, second)
            println("Sum of ${first} and ${second} is ${sum}")

            call.printMessage("Message from kotlin")
        }
    }
}