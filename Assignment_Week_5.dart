// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student: Name - $name, Age - $age, Grade Level - $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher: Name - $name, Age - $age, Subject - $subject');
  }
}

// Class to create student and teacher objects and call methods to print information
class School {
  void printSchoolInfo() {
    // Create student object
    var student = Student('Alice', 15, 10);
    // Create teacher object
    var teacher = Teacher('Mr. Smith', 35, 'Math');

    // Print student information
    student.printStudentInfo();
    // Print teacher information
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create school object
  var school = School();
  // Call method to print school information
  school.printSchoolInfo();
}
