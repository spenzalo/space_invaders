CXX = clang++
CXXFLAGS = -std=c++17 -framework OpenGL -I/opt/homebrew/Cellar/glew/2.2.0_1/include -I/opt/homebrew/Cellar/glfw/3.4/include
LDFLAGS = -L/opt/homebrew/Cellar/glew/2.2.0_1/lib -L/opt/homebrew/Cellar/glfw/3.4/lib -lGLEW -lglfw
TARGET = space_invaders
SOURCES = main.cpp

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
