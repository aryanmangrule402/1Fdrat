// Encapsulation
// 3.create a class named Employee. The class has one private property _name.
// We will also create a public method getName() to access the private property

class Employee {
  String? _name;

  String? getName() {
    return _name;
  }
}

void main() {
  Employee employee = Employee();
  employee._name = 'Rohan';
  print(employee.getName());
}