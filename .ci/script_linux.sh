cd HelloWorld
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
make -j4
cd ../..

cd .tutorials
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
make -j4
cd ../..

