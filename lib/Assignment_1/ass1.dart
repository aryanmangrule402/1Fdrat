import 'dart:io';
// Declare constant type of int set value 7.
void firstQuestion()
{
  const int a=12;
  print(a);

  final int b;
  b=20;
  print(b);
}
// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100
void secondQuestion()
{
  print("Principle Amount : ");
  int p = int.parse(stdin.readLineSync()!);
  print("Time : ");
  int t= int.parse(stdin.readLineSync()!);
  print("Rate : ");
  double r = double.parse(stdin.readLineSync()!);
  double SimpleInterest=(p*t*r)/100;
  print("Simple Interest : $SimpleInterest");
}

// Write a program to print a square of a number using user input.
void thirdQuestion()
{
  print("Enter a number : ");
  num n=num.parse(stdin.readLineSync()!);
  num square=n*n;
  print("Square of $n is $square");
}
// Write a program to print full name of a from first name and last name using user input.

void fourthQuestion()
{
  print("Enter first name : ");
  String fname = stdin.readLineSync()!;
  print("Enter Last Name :");
  String lname = stdin.readLineSync()!;

  print("Your Name : $fname $lname");

}
// Write a program to find quotient and remainder of two integers.

void fifthQuestion()
{
  print("Enter dividend :  ");
  int a=int.parse(stdin.readLineSync()!);
  print("Enter divisor :  ");
  int b=int.parse(stdin.readLineSync()!);
  int remaindor=a%b;
  int quotient=a~/b;
  print("Remainder : $remaindor");
  print("Quotient : $quotient");
}

// Write a program to swap two numbers.
void sixthQuestion()
{
   print("Enter First number : ");
   num a=num.parse(stdin.readLineSync()!);
   print("Enter Second number : ");
   num b=num.parse(stdin.readLineSync()!);
   num temp;
   temp=a;
   a=b;
   b=temp;
   print("After Swaping : 1. First Number=$a\n 2. Second Number=$b");

}
// Write a program in Dart to remove all whitespaces from String.

void seventhQuestion()
{
  print("Enter a string : ");
  String str=stdin.readLineSync()!;
  str=str.replaceAll(" ", "");
  print("After removing white spaces : $str");
}
// Write a Dart program to convert String to int.
void eighthQuestion()
{
  print("Enter a number : ");
  String str=stdin.readLineSync()!;
  int num=int.parse(str);
  print("Number : $num");
}
// Suppose, you often go to restaurant with friends and you have to split amount of
// bill. Write a program to calculate split amount of bill.
// Formula= (total bill amount) / number of people
void ninthQuestion()
{
  print("Enter total bill amount : ");
  double totalBillAmount=double.parse(stdin.readLineSync()!);
  print("Enter number of people : ");
  int noOfPeople=int.parse(stdin.readLineSync()!);
  double splitAmount=totalBillAmount/noOfPeople;
  print("Split Amount : $splitAmount");
}

// Suppose, your distance to office from home is 25 km and you travel 40 km per
// hour. Write a program to calculate time taken to reach office in minutes.
// Formula= (distance) / (speed)
void tenthQuestion()
{
  print("Enter distance : ");
  double distance=double.parse(stdin.readLineSync()!);
  print("Enter speed : ");
  double speed=double.parse(stdin.readLineSync()!);
  double time=(distance/speed)*60;
  print("Time taken to reach office in minutes : $time");
}
void main(){
    seventhQuestion();
}

