LIBS=-lsfml-window -lsfml-graphics -lsfml-system -lpthread
PARAMS=-std=c++11 -O3 

all: main-omp main-cpp main-no

main-omp: main.cpp
	g++ ${PARAMS} -fopenmp -DPARALLELIZE=OPENMP -o main-omp main.cpp ${LIBS} 
main-cpp: main.cpp
	g++ ${PARAMS} -DPARALLELIZE=CPP -o main-cpp main.cpp ${LIBS} 
main-no: main.cpp
	g++ ${PARAMS} -o main-no main.cpp ${LIBS} 
