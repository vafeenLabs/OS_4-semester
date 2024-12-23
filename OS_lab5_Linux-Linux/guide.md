# Установка и настройка Apache2 на Linux1
```shell 
sudo apt install apache2
```


Подключитесь к виртуальной машине Linux1.
Установите Apache2 веб-сервер:

```shell
sudo apt-get update
sudo apt-get install apache2
```

Создайте новый файл конфигурации для виртуального хоста:
```shell 
sudo gedit /etc/apache2/sites-available/default-ssl.conf
```
Добавьте следующее содержимое в файл:
```html
<IfModule mod_ssl.c>
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

<VirtualHost *:443>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    SSLEngine on
    SSLCertificateFile /etc/ssl/certs/ssl-cert-snakeoil.pem
    SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key
</VirtualHost>
</IfModule>
```


Включите модули Apache необходимые для HTTPS:

```shell
sudo a2enmod ssl
sudo a2ensite default-ssl
```


Перезапустите Apache:
```shell
sudo systemctl restart apache2
```


# Создание сайта на Linux1
Создайте новый каталог для сайта:
```shell
sudo mkdir /var/www/html
```

Создайте файл index.html в этом каталоге:
```shell
sudo gedit /var/www/html/index.html
```

Вставьте в файл следующий код:
```html
<html>
<head>
    <title>My site</title>
</head>
<body>
    <h1>Hello!</h1>
</body>
</html>
```

# Проверка доступа к веб-сайту
Перейдите в браузере на `http://IP_Linux1` и `https://IP_Linux1`, где `IP_Linux1` - IP-адрес виртуальной машины Linux1.
Можно узнать с помощью команды `ip a`
Вы должны увидеть страницу "My site".
