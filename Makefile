CC=gcc
CFLAGS=-Wall -Wextra -xc -g -std=gnu99

lib_riddle.so: object_files/*.o
	gcc --shared -lm -o lib_riddle.so object_files/*.o 
	cp lib_riddle.so ${LD_LIBRARY_PATH}

clean:
	rm lib_riddle.so

rebuild: clean lib_riddle.so
