CXX = g++
CXXFLAGS = -std=c++11 -fPIC -O3 -Wall -finline-functions

INCPATH = -I./include

CPP_FILES := $(wildcard src/*.cpp)
OBJS = $(addprefix output/, dlog_util.o dlog.o)

.PHONY: all clean

all: output/lib/libdlog.a
	@cp -r include output/
	@echo 'make all done'

output/lib/libdlog.a: $(OBJS)
	@mkdir -p $(@D)
	ar crv $@ $(filter %.o, $?)

output/%.o: src/%.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(INCPATH) -c -o $@ $^

clean:
	rm -rf output
