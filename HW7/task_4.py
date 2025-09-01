scores = [75, 88, 95, 0, 100]
total_score = 0

for score in scores:
    if score < 0:
        continue
    elif score == 0:
        break
    else:
        total_score += score
        print(f"Added score: {score}")

else:
    print("All data processed")

print(f"\nTotal score sum: {total_score}")

