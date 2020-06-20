#include <stdio.h>
#include "com_github_fabiosoaza_app_NativeCall.h"

JNIEXPORT void JNICALL Java_com_github_fabiosoaza_app_NativeCall_sayHello(JNIEnv * env, jobject obj){
    printf("Say hello from native\n");
 }

 JNIEXPORT jlong JNICALL Java_com_github_fabiosoaza_app_NativeCall_sumIntegers
   (JNIEnv* env, jobject thisObject, jint first, jint second) {
     printf("The numbers received are :%d and %d \n", first, second);
     return (long)first + (long)second;
 }

 JNIEXPORT void JNICALL Java_com_github_fabiosoaza_app_NativeCall_printMessage
    (JNIEnv* env, jobject thisObject, jstring message) {
      //C needs to pass env as parameter
      const char* messageCharPointer = (*env)->GetStringUTFChars(env, message, NULL);
      printf("Native message received : %s \n", messageCharPointer);
  }