Pname = basicfuncs
CC = gcc
bin = bin/$(Pname)
libs = libs/myio.h
obj/asm.o:
	nasm -felf64 src/main.asm -o obj/asm.o
obj/myio.o:
	$(CC) -c src/myio.c -o obj/myio.o
obj/mymain.o:
	$(CC) -c src/mymain.c -o obj/mymain.o
build:clean obj/myio.o obj/asm.o obj/mymain.o $(libs)
	$(CC) obj/myio.o obj/asm.o obj/mymain.o -o $(bin)
clean:
	rm -f obj/*.o
run:
	./$(bin)