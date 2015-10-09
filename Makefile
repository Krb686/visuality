APP=visuality
CXX=g++
CXXFLAGS=-g
SRCDIR=./src
OBJDIR=./build

SRCS=$(shell find ./src -maxdepth 1 -type f -name "*.cpp")
OBJS=$(patsubst src/%.cpp, obj/%.o, $(SRCS))

all: $(APP)

$(APP): $(OBJS)
	@echo "$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $(APP) $(OBJS) $(LDLIBS)"
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $(APP) $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	rm -f ./.depend
	$(CXX) $(CXXFLAGS) -MM $^>>./.depend;

clean:
	echo "$(OBJS)"
	rm -f $(OBJS)

dist-clean: clean
	rm -f *~ .depend

include .depend

