import "dart:io";
//
// void main() {
//   // Write a dart program to check if the number is odd or even.
//   stdout.write("Enter a number: ");
//   int number = int.parse(stdin.readLineSync()!);
//   if (number % 2 == 0) {
//     print("Number is Even");
//   }
//   else {
//     print("Number is Odd");
//   }
// }
void main(){
  stdout.write('Enter');
  int a=int.parse(stdin.readLineSync()!);
  if(a%2==0){
    print("$a Even");
  }
  else{
    print('$a odd');
  }
}