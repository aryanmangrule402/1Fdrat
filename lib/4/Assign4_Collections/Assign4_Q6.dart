void main(List<String> args) {
  // 6. Create a map with name, phone keys and store some values to it. 
  //    Use where to find all keys that have length 4.

  Map<String, String> contacts = {
    'Jaya': '1234567890',
    'Sujay': '4561237890',
    'Miles': '7418520632',
    'Devi': '9746513120',
    'John': '7812398230',
  };
  var keysWithLengthFour = contacts.keys.where((key) => key.length == 4);

  print("\nKeys with length 4:");
  keysWithLengthFour.forEach((key) {
    print(key);
  });
}