# Дано: email = " USER@DOMAIN.COM "
#1. Очистить и отформатировать до вида: "user@domain.com"
#2. Разделить на имя пользователя и домен
#3. Используя f-строку, создать: "Username: user, Domain:
#domain.com"
from tkinter.font import names

raw_email = " USER@DOMAIN.COM "
cleaned_email = raw_email.replace(' ', '').lower()
print(f'cleaned_email : {cleaned_email}')
user = cleaned_email.split('@')[0]
domain = cleaned_email.split('@')[1]
print(f'Username: {user}, Domain: {domain}')