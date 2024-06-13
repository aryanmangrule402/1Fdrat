// Write a dart program to create a class Laptop with properties [id, name,
// ram] and create 3 objects of it and print all details.

class Laptop {
  int id;
  String name;
  int ram;
  Laptop(this.id, this.name, this.ram);
  void printDetails() {
    print("Laptop: $id, $name, $ram");
  }
}
/*void main() {
  Laptop laptop1 = Laptop(1, "Acer", 16);
  Laptop laptop2 = Laptop(2, "HP", 8);
  Laptop laptop3 = Laptop(3, "Asus", 4);
  laptop1.printDetails();
  laptop2.printDetails();
  laptop3.printDetails();
}*/

// Write a dart program to create a class House with properties [id, name,
// prize]. Create a constructor of it and create 3 objects of it. Add them to the
// list and print all details.

class House {
  int id;
  String name;
  int prize;
  House(this.id, this.name, this.prize);
  void printDetails() {
    print("House: $id, $name, $prize");
  }
}
/*void main() {
  House house1 = House(1, "Shivparvati", 1000000);
  House house2 = House(2, "Rudrambika", 500000);
  House house3 = House(3, "Gadibaba Nivas", 1050000);
  List<House> houses = [house1, house2, house3];
  for (var house in houses) {
    house.printDetails();
  }
}*/

// Write a dart program to create a class Animal with properties [id, name,
// color]. Create another class called Cat and extends it from Animal. Add
// new properties sound in String. Create an object of a Cat and print all
// details.

class Animal {
  int id;
  String name;
  String color;
  Animal(this.id, this.name, this.color);
  void printDetails() {
    print("Animal: $id, $name, $color");
  }
}
class Cat extends Animal {
  String sound;
  Cat(int id, String name, String color, this.sound) : super(id, name, color);
  void printDetails() {
    super.printDetails();
    print("Sound: $sound");
  }
}
/*void main() {
  Cat cat = Cat(1, "Cat 1", "Black", "Meow");
  cat.printDetails();
 */

// Write a dart program to create a class Camera with private properties [id,
// brand, color, prize]. Create a getter and setter to get and set values. Also,
// create 3 objects of it and print all details.

class Camera {
  int _id;
  String _brand;
  String _color;
  int _prize;

  Camera(this._id, this._brand, this._color, this._prize);

  int get id => _id;

  set id(int value) => _id = value;

  String get brand => _brand;

  set brand(String value) => _brand = value;

  String get color => _color;

  set color(String value) => _color = value;

  int get prize => _prize;

  set prize(int value) => _prize = value;

  void printDetails() {
    print("Camera: $_id, $_brand, $_color, $_prize");
  }
}
/*void main() {
  Camera camera1 = Camera(1, "Canon", "Black", 1000);
  Camera camera2 = Camera(2, "Nikon", "White", 2000);
  Camera camera3 = Camera(3, "Sony", "Red", 3000);
  camera3.prize = -2000;
  camera1.printDetails();
  camera2.printDetails();
  camera3.printDetails();
}*/

// Create an interface called Bottle and add a method to it called open().
// Create a class called CokeBottle and implement the Bottle and print the
// message “Coke bottle is opened”. Add a factory constructor to Bottle and
// return the object of CokeBottle. Instantiate CokeBottle using the factory
// constructor and call the open() on the object.

abstract class Bottle {
  void open() {}

  factory Bottle.cokeBottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }
}

/*void main() {
  Bottle cokeBottle = Bottle.cokeBottle();
  cokeBottle.open();
}*/
