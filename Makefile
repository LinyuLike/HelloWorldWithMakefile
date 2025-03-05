# 定义编译器
CC = clang

# 定义编译选项
CFLAGS = -Wall -Wextra -O2

# 定义目标可执行文件名称
TARGET = main.exe

# 定义源文件
SRCS = main.c

# 定义目标文件（自动从源文件生成）
OBJS = $(SRCS:.c=.o)

# 默认目标：编译并生成可执行文件
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# 生成目标文件
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# 清理生成的文件
clean:
	rm -f $(OBJS) $(TARGET)

# 伪目标，避免与同名文件冲突
.PHONY: all clean