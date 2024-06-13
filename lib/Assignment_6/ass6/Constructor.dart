// Constructor
// Try to create a class Person with two properties: name, and planet. Create a
// default constructor to initialize the values of the planet to earth. Create an
// object of the class Person, set the name to “Your Name” and print the name
// and planet.

class Person {
  String name;
  String planet;
  Person(this.name) : planet = "Earth";
}


// 5.Create a class Customer with three properties: name, age, and phone.The
// class should have one constant constructor. The constructor should initialize
// the values of the three properties.Create an object of the class Customer and
// print the values of the three properties.

class Customer {
  final String name;
  final int age;
  final int phone;
  Customer(this.name, this.age, this.phone);
}

void main() {

  Person person = Person('Rohan');
  print(person.name);
  print(person.planet);

  Customer customer = Customer('Harsh', 25, 1234567890);
  print(customer.name);
  print(customer.age);
  print(customer.phone);
}
