 import "dart:io";

void main() {
// Write a dart program to check whether a character is a vowel or consonant.
  stdout.write("Enter a character: ");
  String char = stdin.readLineSync()!.toLowerCase();
  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print("Vowel");
  }
  else {
    print("Consonant");
  }
}