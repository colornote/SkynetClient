SkynetClient
============

Android library for connecting to cloudwu/skynet (A lightweight online game framework) 


## Requirements


* [Android SDK](http://developer.android.com/sdk/index.html)
* [Android NDK](http://developer.android.com/sdk/ndk/index.html)
* (optionally) Eclipse with the [ADT](http://developer.android.com/sdk/eclipse-adt.html) plugin

Lua5.2.3 and JNLua sources are included.

Building
--------

Assuming that `$SDK` points to your SDK and `$NDK` points to your NDK installation, run the following:

    git clone git://github.com/colornote/SkynetClient.git
    cd AndroLua
    $NDK/ndk-build NDK_MODULE_PATH=jni

This will build the native library, consisting of Lua , JNLua, sproto, luasocket. Then import the project into Eclipse, or run the  

    $SDK/tools/android update project -p .
    ant debug
    ant install


## Libraries Used

* [JNLua](https://code.google.com/p/jnlua/ )
* [sproto](https://github.com/cloudwu/sproto )
* [luasocket](https://github.com/diegonehab/luasocket )  


## License

MIT.  
