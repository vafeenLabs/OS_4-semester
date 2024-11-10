# Makefile для компиляции, очистки и установки программы

# Компилятор и флаги
CC := g++
CFLAGS := -Wall -Wextra

# Исходные файлы
SRCS := main.cpp num.cpp
HEADERS := num.hpp

# Объектные файлы
OBJS := $(SRCS:.cpp=.o)

# Имя исполняемого файла
EXEC := my_program

# Цель по умолчанию: компиляция программы
all: $(EXEC)

# Компиляция программы
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Очистка: удаление объектных файлов и исполняемого файла
clean:
	rm -f $(OBJS) $(EXEC)
	rm -rf ./.vscode

# Установка: копирование исполняемого файла в ~/bin
install: $(EXEC)
	mkdir -p ~/bin
	cp $(EXEC) ~/bin/

.PHONY: all clean install

