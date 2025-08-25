number = int(input("Enter a number for countdown: "))
for i in range(number, 0, -1):
    print(i, end="...\n")
print('Go!')
