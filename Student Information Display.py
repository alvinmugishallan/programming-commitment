def display_student_info(name,age):
    print("Student Name:",name)
    print("Student Age:",age)
    if age<=10:
        print("Status:Minor")
    else:
        print("Status:Adult")
        return
student_name ="Alice"
student_age = 20
display_student_info(student_name, student_age)
