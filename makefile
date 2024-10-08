# Makefile

CXX = g++  # Using g++ as the compiler
CXXFLAGS = -std=c++17  # Specifying to use C++17 standard
SFMLFLAGS = -lsfml-graphics -lsfml-window -lsfml-system  # Linking SFML libraries
TARGET = SFMLApp  # Name of the output executable
SOURCES = main.cpp  # Listing source files, add more .cpp files if necessary

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SFMLFLAGS) $(SOURCES) -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
