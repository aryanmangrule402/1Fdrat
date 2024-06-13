void main(List<String> args) {
  // 5. Create a map with name, address, age, country keys and store values to it. 
  //    Update country name to other country and print all keys and values.

  Map<String, dynamic> data = {
    'name': 'James Bond',
    'address': '123 Main Street London',
    'age': 30,
    'country': 'UK',
  };

  print("\nBefore changing value: \n");
  print("KEY\t:\tVALUE");
  data.forEach((key, value) {
    print("$key\t:\t$value");
  });

  data['country'] = 'USA';

  print("\nAfter changing value: \n");
  print("KEY\t:\tVALUE");
  data.forEach((key, value) {
    print("$key\t:\t$value");
  });
  print("\n");

}