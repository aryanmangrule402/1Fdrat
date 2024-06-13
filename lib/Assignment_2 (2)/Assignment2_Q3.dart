import "dart:io";

void main() {
// Write a dart program to check whether a number is positive, negative, or zero.
  stdout.write("Enter a number: ");
  double num = double.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("Number is positive");
  }
  else if (num < 0) {
    print("Number is negative");
  }
  else {
    print("Number is 0");
  }
}