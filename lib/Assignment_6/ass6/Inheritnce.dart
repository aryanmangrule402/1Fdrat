// Inheritance
// 6.Create parent class Car and child class Toyota. The Toyota class inherits
// the properties and methods of the Car class.
class Car {
  String name;
  int prize;
  Car(this.name, this.prize);
}

class Toyota extends Car {
  Toyota(String name, int prize) : super(name, prize);
}

// 7.Create a class named NoteBook. The class has two private
// properties _name and _prize. There are two getters name and prize to access
// the value of the properties.

class NoteBook {
  String _name;
  int _prize;
  NoteBook(this._name, this._prize);
  String get name => _name;
  int get prize => _prize;
}

// 8.Create a class named BankAccount with one private property _balance.
// There is one getter balance to read the value of the property. There are
// methods deposit and withdraw to update the value of the _balance.

class BankAccount {
  double _balance;
  BankAccount(this._balance);
  double get balance => _balance;
  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    _balance -= amount;
  }
}

void main() {
  // 6
  Toyota toyota = Toyota('Toyota', 100000);
  print(toyota.name);
  print(toyota.prize);

  // 7
  NoteBook notebook = NoteBook('Classmate', 70);
  print(notebook.name);
  print(notebook.prize);

  // 8
  BankAccount bankAccount = BankAccount(1000);
  print(bankAccount.balance);
  bankAccount.deposit(500);
  print(bankAccount.balance);
  bankAccount.withdraw(200);
  print(bankAccount.balance);
}
// import 'dart:io';
//
// class BankAccount {
//   double _balance;
//
//   BankAccount(this._balance);
//
//   double get balance => _balance;
//
//   void deposit(double amount) {
//     if (amount <= 0) {
//       print("Deposit amount must be positive.");
//     } else {
//       _balance += amount;
//       print("Successfully deposited $amount. New balance: $_balance");
//     }
//   }
//
//   void withdraw(double amount) {
//     if (amount <= 0) {
//       print("Withdrawal amount must be positive.");
//     } else if (amount > _balance) {
//       print("Insufficient funds. Withdrawal not processed.");
//     } else {
//       _balance -= amount;
//       print("Successfully withdrew $amount. New balance: $_balance");
//     }
//   }
// }
//
// void main() {
//   // Initialize a bank account with an initial balance of 0
//   var account = BankAccount(0.0);
//
//   // Interactive menu
//   while (true) {
//     print("\nBank Account Menu:");
//     print("1. Check Balance");
//     print("2. Deposit");
//     print("3. Withdraw");
//     print("4. Exit");
//
//     stdout.write("Enter your choice (1-4): ");
//     var choice = int.parse(stdin.readLineSync()!);
//
//     switch (choice) {
//       case 1:
//         print("Current Balance: ${account.balance}");
//         break;
//       case 2:
//         stdout.write("Enter amount to deposit: ");
//         var amount = double.parse(stdin.readLineSync()!);
//         account.deposit(amount);
//         break;
//       case 3:
//         stdout.write("Enter amount to withdraw: ");
//         var amount = double.parse(stdin.readLineSync()!);
//         account.withdraw(amount);
//         break;
//       case 4:
//         print("Exiting...");
//         return;
//       default:
//         print("Invalid choice. Please enter a number from 1 to 4.");
//     }
//   }
// }
