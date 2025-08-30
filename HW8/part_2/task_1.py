 # Создайте функцию без параметров show_current_time() — печатает
# текущие дату и время (используйте модуль datetime).

import datetime

def show_current_time():
    now = datetime.datetime.now()
    print(f'Текущие дата и время: {now}')

show_current_time()

