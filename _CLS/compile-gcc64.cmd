gcc -m64 -c -O3 simple_host.cpp simple_codec.cpp complex_codec.cpp
gcc -m64 simple_host.o simple_codec.o -o simple_host_with_simple_codec.exe
dllwrap -m64 --driver-name c++ simple_codec.o -def cls-test.def -s -o cls-test.dll