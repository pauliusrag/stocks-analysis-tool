# Compiler
CXX := g++
# Compiler flags
CXXFLAGS := -std=c++20 -Wall -Wextra

# Directories
INCDIR := include
LIBDIR := libs
SRCDIR := src
TESTDIR := test
GTESTDIR := $(LIBDIR)/googletests
# Output directory
BUILDDIR := build
# Executable names
EXEC := main
TEST_EXEC := test_runner

# Source files
SRCS := $(wildcard $(SRCDIR)/*.cpp)
TEST_SRCS := $(wildcard $(TESTDIR)/*.cpp)
# Object files
OBJS := $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SRCS))
TEST_OBJS := $(patsubst $(TESTDIR)/%.cpp,$(BUILDDIR)/%.o,$(TEST_SRCS))

# Include directories
INC := -I$(INCDIR) 
TEST_INC := -I$(GTESTDIR)/googletest/include -I$(GTESTDIR)/googlemock/include

# Libraries
LIBS := -L$(GTESTDIR)/build/lib -lgtest -lgtest_main -lpthread

# Target: Build main executable
$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INC) -o $(EXEC) $(OBJS)

# Target: Build test executable
$(TEST_EXEC): $(TEST_OBJS)
	$(CXX) $(CXXFLAGS) $(TEST_INC) -o $(TEST_EXEC) $(TEST_OBJS) $(LIBS)

# Rule: Build object files from source files
$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp | $(BUILDDIR)
	$(CXX) $(CXXFLAGS) $(INC) -c -o $@ $<

# Rule: Build object files from test files
$(BUILDDIR)/%.o: $(TESTDIR)/%.cpp | $(BUILDDIR)
	$(CXX) $(CXXFLAGS) $(TEST_INC) -c -o $@ $<

# Rule: Create build directory if it doesn't exist
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

# Target: Run tests
test: $(TEST_EXEC)
	./$(TEST_EXEC)

# Target: Run Valgrind check
valgrind: $(EXEC)
	PATH="/usr/local/valgrind/bin:$(PATH)" valgrind --leak-check=full --error-exitcode=1 ./$(EXEC)

# Target: Run Cppcheck on src folder
cppcheck:
	cppcheck --enable=all --verbose $(SRCDIR)

# Target: Clean build artifacts
clean:
	rm -rf $(BUILDDIR) $(EXEC) $(TEST_EXEC)

# Target: Run the main executable
run: $(EXEC)
	./$(EXEC)

# Default target
runall: $(EXEC) $(TEST_EXEC)
	./$(EXEC)
	./$(TEST_EXEC)

.PHONY: clean test valgrind