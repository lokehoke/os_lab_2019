gcc tests.c -I ../revert_string  -L ../revert_string/shared -l revert_string  -o tests.o -l cunit

LD_LIBRARY_PATH=$(pwd)/../revert_string/shared ./tests.o

