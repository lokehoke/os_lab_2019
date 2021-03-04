gcc -c main.c -o main.o
gcc -c revert_string.c -o static/revert_string.o
gcc -c -fPIC revert_string.c -o shared/revert_string.o


ar rcs static/librevert_string.a static/revert_string.o
gcc main.o -L static -l revert_string -o static/rs.o

./static/rs.o acd

gcc -shared shared/revert_string.o -o shared/librevert_string.so
gcc main.o -L shared -l revert_string -o shared/rs.o

LD_LIBRARY_PATH=$(pwd)/shared shared/rs.o acd
