CXX = g++
CXXFLAGS = -O3 -std=c++17 -Wall -Wextra

SRC_DIR = src
TARGET = profiler.exe

SOURCES = $(SRC_DIR)/main.cpp $(SRC_DIR)/cpu.cpp

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)