#!/bin/bash

# Альтернативный способ запроса PID
pid=$1

# Определение названия приложения
app_name=$(ps -p $pid -o comm=)

# Определение объема памяти
mem_usage=$(ps -p $pid -o rss=)

# Определение владельца процесса
owner=$(ps -p $pid -o user=)

# Определение времени работы
uptime=$(ps -p $pid -o etime=)

# Запись результатов в файл журнала
echo "Название приложения: $app_name" > /var/log/фамилия.log
echo "Объем используемой памяти: $mem_usage" >> /var/log/фамилия.log
echo "Владелец процесса: $owner" >> /var/log/фамилия.log
echo "Время работы процесса: $uptime" >> /var/log/фамилия.log
