cd HelloWorld
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
make -j4
cd ../..

cp (brew --prefix dartsim6)/share/doc/dart/tutorials .
cd .tutorials
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
make -j4
cd ../..

cp (brew --prefix dartsim6)/share/doc/dart/examples .
cd .examples
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
make -j4
cd ../..

