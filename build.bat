@echo OFF

cd Source

set TARGETS=(armeabi-v7a x86_64 arm64-v8a)
set ANDROID_TOOLCHAIN="D:\Tools\AndroidSDK\ndk\21.3.6528147\build\cmake\android.toolchain.cmake"

mkdir Build && cd Build
	
FOR %%i in %TARGETS% do (
    mkdir %%i
	cd %%i

    cmake -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%ANDROID_TOOLCHAIN% -DANDROID_PLATFORM=21 -DCMAKE_BUILD_TYPE=Release -DANDROID_ABI=%%i ..
	cmake --build . -j4

    cd ..
)

echo Libraries compiled in Source/Lib
cd ..