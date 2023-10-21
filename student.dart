import 'dart:io';

class Student {
  Student(){ // A constructor has no return type

  }}
  void main() {
    print('Enter Name:');
    String? name = stdin.readLineSync();

    print('Enter Age:');
    int age = int.parse(stdin.readLineSync()!);

    print('Enter Admission Number:');
    int admissionNumber = stdin.readByteSync();

    print('Name: $name \n Age: $age \n Admission Number: $admissionNumber');
  }

  void printStudentDetails() {

    
    // function body
  }
 Student students = new Student();

