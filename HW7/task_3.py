import random

low_border = 1
high_border = 10
number = random.randint(low_border, high_border)

print(f'I thought of a number from {low_border} to {high_border}. Try to guess.')

guess = 0
while guess != number:
    guess = int(input('Guess the number: '))
    if guess > number:
        print("Too high! Try again.")
    elif guess < number:
        print("Too low! Try again.")

print("You're goddamn right! You guessed the number.")
