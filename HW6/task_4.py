import random

low_border = 1
high_border = 5
number = random.randint(low_border, high_border)
print(f'I thought of a number from {low_border} to {high_border}. Try to guess.')
guess = int(input('Guess the number: '))
if guess == number:
    print("You're goddamn right!")
elif guess > number:
    print(f'Too high! My number is {number}')
else:
    print(f'Too low! My number is {number}')
