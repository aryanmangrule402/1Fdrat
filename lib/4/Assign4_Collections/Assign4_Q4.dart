import 'dart:io';

void main(List<String> args) {
  // 4. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.

  List<String> friends = ["Om", "Aditya", "Viraj", "Tanmay", "Shreyas", "Pranav", "Aryan"];
  stdout.write(friends.where((name) => name.startsWith('A')));
  
}