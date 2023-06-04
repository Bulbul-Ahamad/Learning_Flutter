void main() {
  int age = 30;
  print(age);
  double a = 2.4444;
  print(a);
  String name = 'Hriody';
  print(name);
  bool value = true;
  print(value);

  //list
  List mylist = ['one', 'two', 'three', 'four'];
  print(mylist);

  //Map
  Map<String, dynamic> myMap = {
    'name': 'Hridoy',
    'age': 30,
  };
  print(myMap);
  //set
  var mySet = {'one', 'two', 'three', 'four'};
  print(mySet);

  //rune
  final name2 = 'hridoy';
  print(name2.codeUnits);

  Runes input = Runes('\u{1F49B}');
  print(String.fromCharCodes(input));

  var results = name is String;
  print(name);

  int? age2;
  var result2 = age2 ?? 25;
  print(result2);

  String color = 'red';
  var result1 = color == 'red' ? 'color is red' : 'unknown';
  print(result1);

  int c = 10;
  int b = 3;
  var result = c ~/ b;
  print(result);
}
