#!/bin/bash

function build_native(){
    make clean
    make
}

function build_jar(){
    ./gradlew clean build
}

function run_kotlin(){
    JAR=$(echo build/libs/jni-example-*.jar)
    java -Djava.library.path=$(pwd)/native -cp "$JAR" com.github.fabiosoaza.app.Main
}

 case $1 in
    "build")
      build_native
      build_jar
    ;;
    "run")
      run_kotlin
    ;;
    *)
      echo "You must pass an argument. Argument can be build or run"
    ;;

 esac