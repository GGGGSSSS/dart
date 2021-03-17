main(List<String> args) {
  var name = 'zz';

  Map<String, dynamic> info = {
    name: 'Xx',
    'age': 1,
    'height': 0,
  };
  final p = Person.fromMap(info);

  final z = Rectangle(3, 4);
  print(z);
  print(args[0]);

  var b;
  print(b);
}

class Person {
  var name;
  int? age;
  int? height;

  // Person(String name, int age, double height) {
  //   this.name = name;
  //   this.age = age;
  //   this.height = height;
  // }

  Person(this.name, [this.age = 3, this.height = 5]);

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['zz'];
    this.age = map['age'];
    this.height = map['height'];
  }
  //函数重载在c中就有 能调用名字相同函数类型不同的函数 这里名字不相同 容错率更高
}

class Rectangle {
  int width;
  int height;
  int area;

  // Rectangle(this.width, this.height) {
  //   this.area = width * height;
  // }
  Rectangle(this.width, this.height) : area = width * height;
  //初始化列表

  @override
  String toString() {
    // TODO: implement toString
    return 'rectangle';
  }
}
