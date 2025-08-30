#Дан список чисел nums и целевое число target. Найти индексы двух чисел, сумма которых равна target.
# Пример:
#nums = [2, 7, 11, 15]
#target = 9

#nums = [3, 2, 4]
#target = 6

nums = [3, 2, 4]
target = 6

num_to_index = {}  # число - индекс
for index, num in enumerate(nums):
    complement = target - num # число, которое надо найти, чтобы сумма была равна target
    if complement in num_to_index:
        print([num_to_index[complement], index])
    num_to_index[num] = index # добавить в словарь



