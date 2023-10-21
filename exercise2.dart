// =================MASTERS' STUDENT INFORMATION ======================
// Print the information in this manner
// Name:
// Admission Number:
// Declare my own method to print Master student and it should have the return type of void.

import 'dart:io';

class Student {
  // Attributes of the class Student and using a tenary? it should not be null
  String? name;
  int? admNo;
  String? emailAddress;
  int? age;
  String? phoneNumber;
  String? courses;
  String? highSchoolName;

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
  void main() {
    print('Enter Name:');
    String? name = stdin.readLineSync();

    print('Enter Admission Number:');
    int admNo = int.parse(stdin.readLineSync()!);

    print('Enter Admission Number:');
    int emailAddress = stdin.readByteSync();

     print('Name: $name \n Admission Number: $admNo \n Admission Number: $emailAddress');
  }

  void printStudentDetails() {
    
   
    // function body
  }
}
