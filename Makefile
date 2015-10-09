APP=visuality
CXX=g++
CXXFLAGS=-g
SRCDIR=./src

SRCS=$(shell find ./src -maxdepth 1 -type f -name "*.cpp")
OBJS=$(patsubst src/%.cpp, obj/%.o, $(SRCS))

all: $(APP)

$(APP): $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $(APP) $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	rm -f ./.depend
	$(CXX) $(CXXFLAGS) -MM $^>>./.depend;

clean:
	rm -f visuality
	rm -f ./bin/Debug/visuality

dist-clean: clean
	rm -f *~ .depend

include .depend

