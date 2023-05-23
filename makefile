# Compiler
CXX := g++
# Compiler flags
CXXFLAGS := -std=c++20 -Wall -Wextra
# Directories
INCDIR := include
LIBDIR := libs
SRCDIR := src
TESTDIR := test
# Output directory
BUILDDIR := build
# Executable name
EXEC := stocks-analysis-tool

# Source files
SRCS := $(wildcard $(SRCDIR)/*.cpp)
# Object files
OBJS := $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SRCS))

# Include directories
INC := -I$(INCDIR)

# Libraries
# LIBS := -L$(LIBDIR) -lmylib

# Target: Build executable
$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INC) -o $(EXEC) $(OBJS) $(LIBS)

# Rule: Build object files
$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp | $(BUILDDIR)
	$(CXX) $(CXXFLAGS) $(INC) -c -o $@ $<

# Rule: Create build directory if it doesn't exist
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

# Target: Run unit tests
test: $(EXEC)
	$(TESTDIR)/run_tests.sh

# Run Valgrind check
valgrind: $(EXEC)
	PATH="/usr/local/valgrind/bin:$(PATH)" valgrind --leak-check=full --error-exitcode=1 ./$(EXEC)
	
# Target: Run Cppcheck on src folder
cppcheck:
	cppcheck --enable=all --verbose $(SRCDIR)
	
# Target: Run built code
run:
	./$(EXEC)

# Target: Clean build artifacts
clean:
	rm -rf $(BUILDDIR) $(EXEC)

.PHONY: clean test valgrind

