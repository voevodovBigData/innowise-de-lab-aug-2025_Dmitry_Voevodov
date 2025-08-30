# Исходный список: fruits = ["apple", "banana"]
# Выполните следующие операции по порядку:
# 1. Добавьте "orange" в конец списка
# 2. Вставьте "grape" по индексу 1
# 3. Удалите "banana"
# 4. Отсортируйте список
# 5. Переверните список
# Выводите список на печать после каждого шага

fruits = ["apple", "banana"]
print(f'{fruits} - исходный список')
fruits.append("orange")
print(f'{fruits} - список после добавления orange')
fruits.insert(1, "grape")
print(f'{fruits} - список после добавления grape')
fruits.remove("banana")
print(f'{fruits} - список после удаления banana')
fruits.sort()
print(f'{fruits} - список после сортировки')
fruits.reverse()
print(f'{fruits} - список после реверсирования')
