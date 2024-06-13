// Class
// 1.Create a class Person with four properties: name, phone, isMarried,
// and age. The class also has a method called displayInfo, which prints out the
// values of the four properties.
// 2.Create a class Car with three properties: name, color, and numberOfSeats.
// The class also has a method called start, which prints out the message “Car
// Started”. We also have an object of the class Car called car.(create two objects
// for class Car) .

class Person {
  String name;
  int phone;
  bool isMarried;
  int age;

  Person(this.name, this.phone, this.isMarried, this.age);

  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Is Married: $isMarried');
    print('Age: $age');
  }
}

class Car {
  String name;
  String color;
  int numberOfSeats;

  Car(this.name, this.color, this.numberOfSeats);

  void start() {
    print('${name} Car Started');
  }
}

void main() {
  Person person1 = Person('Rohan', 8806420000, false, 25);
  person1.displayInfo();

  Person person2 = Person('Harsh',7767830000, true, 30);
  person2.displayInfo();

  print('--------CAR CLASS-------');
  Car car1 = Car('BMW', 'Red', 4);
  car1.start();

  Car car2 = Car('Thar', 'Black', 5);
  car2.start();
}