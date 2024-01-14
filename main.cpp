#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <cmath>

const char* vertexShaderSource = "#version 330 core\n"
"layout (location = 0) in vec3 aPos;\n"
"void main()\n"
"{\n"
"   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
"}\0";
const char* fragmentShaderSource = "#version 330 core\n"
"out vec4 FragColor;\n"
"void main()\n"
"{\n"
"   FragColor = vec4(.8f, .3f, .02f, 1.0f);\n"
"}\n\0";

int main() {
    //get gl initialised
    glfwInit();

    //tell gl what version it should use
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    //rendering the window
    GLFWwindow* w = glfwCreateWindow(750, 750, "render", NULL, NULL);
    if(w == NULL){
        std::cout<<"FAiled to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(w);

    gladLoadGL();

    glViewport(0, 0, 750, 750);

    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);

    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
    glCompileShader(fragmentShader);

    GLuint shaderProgram = glCreateProgram();

    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);

    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    GLfloat vertices[] = {
        -.5f, -.5f * float(sqrt(3)) / 3, .0f,
        .5f, -.5f * float(sqrt(3)) / 3, .0f,
        .0f, .5f * float(sqrt(3)) * 2 / 3, .0f,

        -.5f/2, .5f *float(sqrt(3)) /6, .0f,
        .5f/2, .5f *float(sqrt(3)) /6, .0f,
        .0f, -.5f *float(sqrt(3)) /3, .0f,
    };

    GLuint indices[] = {
        0, 3, 5,
        3, 2, 4,
        5, 4, 1
    };

    // creates reference containers for Vertex Array Object and Vertex Buffer Object
    GLuint VAO, VBO, EBO;

    //generate VAO VBO
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    // make the VAO the main Vertex Array Object by binding
    glBindVertexArray(VAO);

    //binduj VBO saying its -> 'GL_ARRAY_BUFFER'
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // get vertices into the VBO
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // configure the Vertex Atrribute so that oGL can read the VBO
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    // enable the Vertex Attrib so that oGL knows how to use it
    glEnableVertexAttribArray(0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

    while (!glfwWindowShouldClose(w)) {
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(.20f, .0f, .15f, 1.0f);
        glUseProgram(shaderProgram);
        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 9, GL_UNSIGNED_INT, 0);

        glfwSwapBuffers(w);
        glfwPollEvents();
    }

    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
    glDeleteProgram(shaderProgram);

    glfwTerminate();
    return 0;
}
