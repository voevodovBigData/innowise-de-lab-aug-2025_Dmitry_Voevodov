# Дано: words = ["hello", "world", "python", "code"]
# 1. Создать список длин слов, используя списковое включение
# 2. Создать список слов длиннее 4 символов
# 3. Создать словарь: {слово: длина} для всех слов

words = ["hello", "world", "python", "code"]

lengths = [len(word) for word in words]
print(f'Lengths: {lengths}')

words_longer_4_ch = [word for word in words if len(word) > 4]
print(f'Слова длинее 4 символов: {words_longer_4_ch}')

words_dict = {word: len(word) for word in words}
print(words_dict)