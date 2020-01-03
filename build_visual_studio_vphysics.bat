IF NOT EXIST bin mkdir bin

cd build3

premake5 --enable_stable_pd --enable_multithreading --midi --targetdir="../bin" vs2013

start vs2013