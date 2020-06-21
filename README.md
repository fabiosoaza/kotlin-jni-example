# kotlin-jni-example

#### Example of native code calling using  Kotlin and JNI

 I created my native header file by running the following command:  
```javah -jni -cp ".:$YOUR_KOTLIN_PATH/lib/kotlin-stdlib.jar" com.github.fabiosoaza.app.NativeCall``` 
* com.github.fabiosoaza.app.NativeCall is the class with the native calls.

After the header file was generated (```com.github.fabiosoaza.app.NativeCall.h```), I created the C native implementation (```com.github.fabiosoaza.app.NativeCallImpl.c```).  
Important: package of Kotlin/Java native implementation must match the native function name.  
Ex: Class ```NativeCall``` had to be defined at ```com.github.fabiosoaza.app``` to match functions with prefix ```Java_com_github_fabiosoaza_app_NativeCall``` 

### Build example
* To build example run script run.sh passing argument "build"  
``` ./run.sh build```

### Run example
* To run example run script run.sh passing argument "run"  
``` ./run.sh run```

That's it!

### Usefull Links
[Javah Docs](http://docs.oracle.com/javase/7/docs/technotes/tools/windows/javah.html)  
[Matt Moore - Kotlin JNI for Native Code](https://medium.com/@mattmoore_io/kotlin-jni-for-native-code-835e93af7ddf)  
[Baeldung - Guide to JNI (Java Native Interface)](https://www.baeldung.com/jni)  