# kali_install

Для экономии времени и сил на ввод паролей при постоянной работе в виртуалке:
- Включение автологина под пользователем kali
- Отключение автоблокировки экрана



 # Havoc
 После установки изменить пароль
 /opt/Havoc/data/havoc.yaotl или /opt/Havoc/profiles/havoc.yaotl

Запуск Havoc
```
cd /opt/Havoc
killall havoc
./havoc server --profile ./profiles/havoc.yaotl -v --debug & ./havoc client
```

# nginx
```
systemctl enable nginx
systemctl start nginx
```


# nginx

Делаем постоянную папку для раздачи фаилов /var/www/html

Поменять порт с 80 на 8080 /etc/apache2/ports.conf
```
Listen 8080
```
рестарт
```
systemctl enable apache2
systemctl restart apache2
```

