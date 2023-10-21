class Student {
  // Attributes of the class Student and using a tenary? it should not be null
  String? name;
  int? admNo;
  String? emailAddress;
  int? age;
  String? phoneNumber;
  String? courses;
  String? highSchoolName;

  // constructors; create objects atrributes for that class
  // 2. It should hot have a return type.
  //int a;
  // int b;
  // addNumbers() is a method name
  Student.master_student(
      String n,
      int a,
      String
          e) //This is a parametrized constructor. 1. It bears the name of the class.
  {
    this.name = n;
    this.admNo = a;
    this.emailAddress = e;
  }

  Student.dip_student(String n, int a, String e,
      String h) // Named Constructors: Distinguishing different constructors
  {
    this.name = n;
    this.admNo = a;
    this.emailAddress = e;
    this.highSchoolName = h;
  }
  // A method should have a return type
  // syntax for declaring a method returnt type name of method
  // Getter -> will get the attributes of an object. The return type of a getter is
  String? getname() => name; // The arrow shows return. It is cleaner code
  int? getadmNo() => admNo;
  String? getemailAddress() => emailAddress;
  int? getage() {
    return age;
  }

// Setter -> manipulates the attributes of an object. The return type of a setter is void. It does not return a value
  void setName(String n) {
    name = n;
  }

  void setadmNo(String a) {
    name = a;
  }

  void setemailAddress(String e) {
    name = e;
  }

  void setage(String ag) {
    name = ag;
  }

  void printStudentDetails() {
    print("===============Masters Student===================");
    print(
        'Name:$name \n Admission Number: $admNo \n Admission Number: $emailAddress');
  }
}

void main() {
  // Declaring an object
  Student dipStudent = new Student.dip_student('Olivia', 003,
      'olivia@gmail.com', "Ng'iya Girls High"); // parameter passing
  Student masterStudent =
      new Student.master_student('Nathaniel', 005, 'nathan@gmail.com');

  // get admission number and print ---> using the getter method. Syntax used is objectName.attribute()
  // Get the name first
  // Print using the print method
  // dipStudent.getadmNo(); This is a method

  print(
      'The diploma student is ${dipStudent.getname()} and her admission number is ${dipStudent.getadmNo()}');

// Setter -> manipulates the attributes of an object. Syntax used is objectName.attribute();
// Change Olivia to Victoria
  dipStudent.setName(
      "Kenya"); // alternatively dipStudent.setName("Victoria"); This setter accepts arguments

  //print('The Name of the new student is ${dipStudent.name}');
  // print('The Name of the new student is ${dipStudent.name="Victoria"}');

  print('The Name of the new student is ${dipStudent.getname()}');

  // change name from Olivia to Kenya

  // To print the details of the master students

// ASSIGNMENT: ASK THE USER TO ENTER THE DETAILS, IN THIS CASE USE A MASTERS STUDENT, A METHOD TO PRINT THE DETAILS OF THE MASTER STUDENT
  masterStudent.printStudentDetails();
}
