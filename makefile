all: clean test

appTests: tests.cpp student.hpp
	g++ -Wall --std=c++17 tests.cpp catch_amalgamated.cpp -o appTests

test: appTests
	# executes all tests
	./appTests

clean:
	rm -f appTests
