#Создайте функцию calculate_average_score(), которая будет вычислять средний балл.
# Функция должна принимать список оценок scores как обязательный аргумент.
# Добавьте опциональный булевый параметр ignore_lowest со значением по умолчанию False.
# Если ignore_lowest равен True, функция должна отбросить наименьшую оценку
# перед вычислением среднего. Если в списке всего одна оценка, отбрасывать её не нужно.
# Используя цикл, пройдитесь по списку student_data. 2 раза, первый раз учитывая все оценки, а второй раз отбросив худшие оценки

def calculate_average_score(scores, ignore_lowest=False):
    scores_local = scores.copy()
    if len(scores) == 0:
        return 0

    if ignore_lowest and len(scores) > 1:
        scores_local.remove(min(scores_local))

    avg = sum(scores_local) / len(scores_local)
    return avg

student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]},
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]}
]

print('Средние баллы без игнорирования худшего:')
for student in student_data:
    avg = calculate_average_score(student["scores"])
    print(f'Средний бал для {student["name"]}: {avg:.2f}')

print('\nСредние баллы c игнорированием худшего:')
for student in student_data:
    avg = calculate_average_score(student["scores"], ignore_lowest=True)
    print(f'Средний бал для {student["name"]}: {avg:.2f}')