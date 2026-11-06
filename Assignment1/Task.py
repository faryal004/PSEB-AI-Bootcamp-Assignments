class Student:
    def __init__(self, name, score):
        self.name = name
        self.score = score


# Store 3 students in a list
students = [
    Student("Faryal", 85),
    Student("Sara", 45),
    Student("Ahmed", 72)
]


# Display students who passed
print("Students who passed:")

for student in students:
    if student.score > 50:
        print(student.name, "-", student.score)


# Function to find the top scorer
def top_scorer(students):
    top = students[0]

    for student in students:
        if student.score > top.score:
            top = student

    return top


# Display top scorer
top = top_scorer(students)

print("\nTop Scorer:")
print(top.name, "-", top.score)
