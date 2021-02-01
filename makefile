#Makefile for the Project1 program
#Typing make and make clean to create executables
#and to compile all files

#target exe
myexe : main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
	
#build if any changes detected
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

#build if any changes detected
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

#make clean removes these files
clean:
	rm -f *.o myexe
	rm -f *.o myfunc.h.gch
