#!/bin/bash

# Получаем имя процесса от пользователя
read -p "Введите имя процесса:(телега - telegram-deskto) " process_name

# Получаем номер сигнала от пользователя
read -p "Введите номер сигнала(9 для завершения): " signal_number

# Находим PID процесса по его имени
pid=$(pgrep $process_name)

# Проверяем существование процесса
if [ -z $pid ]; then
    echo "Процесс с именем $process_name не найден."
    exit 1
fi

echo "нажмите у[en] для завершение процесса "
read input

if [ "$input"=="y" ]; then 
    # Отправляем сигнал процессу и запрашиваем подтверждение завершения
    kill -$signal_number $pid && echo "Процесс $process_name завершен успешно."
fi 



