import "dart:io";

import "package:flutter/cupertino.dart";
void main() {
// Write a dart program to calculate the sum of natural numbers.
  print("Enter a number: ");
  int N = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (var i = 1; i <= N; i++) {
    sum += i;
  }
  print(sum);
 
}

