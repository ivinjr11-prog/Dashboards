students = []

while True:
    name = input("Enter student name (If finished type 'done'): ")
    if name.lower() == 'done':
        break

    score = float(input("Enter score (0–100): "))
    if 0 <= score <= 100:
        students.append({'name': name, 'score': score})
    else:
        print("Invalid score. Please enter a number between 0 and 100.")


scores = [s['score'] for s in students]
passed_students = [s['name'] for s in students if s['score'] >= 50]
highest = max(scores)
lowest = min(scores)


print("\nHighest Score:", highest)
print("Lowest Score:", lowest)
print("Students Who Passed:")
for name in passed_students:
    print("-", name)

 