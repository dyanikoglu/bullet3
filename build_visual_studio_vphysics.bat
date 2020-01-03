IF NOT EXIST bin mkdir bin

cd build3

premake5 --tbb_support --no-enet --no-clsocket --enable_multithreading --no-demos --no-extras --no-bullet3 --targetdir="../bin" vs2013

cd ..