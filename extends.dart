main(List<String> args) {
  // var name = "狗蛋";
  // var age = 11;
  Animal p = new Person(name: "狗蛋", age: 11);
  // p.age = 18;
  p.run();
  print(p.name);
  print(p.uu);
  print(Animal.i);
}

class Animal {
  int age = 5;
  String name;
  late String uu;
  static int i = 5;

  Animal(this.name, this.age);

  run() {
    print('在奔跑ing$name$age');
  }
}

class Person extends Animal {
  String name;
  late int age;

  Person({this.name, age}) : super(name + "2", age);

  // @override
  // run() {
  //   print('$name在奔跑ing');
  // }

  @override
  String toString() {
    return 'name=$name, age=$age';
  }
}

// 子类会继承父类可见的属性和方法，不会继承构造方法
var names = <dynamic>{};
