class Person {
  String name = null;
  void zz() {
    print('44');
  }
}

void main() {
  // 生成加 2 的函数。
  var r = Person();
  var z = r.name ?? 44;
  // zr['tt'] = '55';
  // zr[Vv] = '55';
  print(r.name);
  print(z);
  print(zr.runtimeType);
  zr['tt'] = '66';
}

const zr = {
  "tt": '55',
};
const zrr = {
  "tt": '55',
};

class Runner implements Person {
  String name;
  int zz() {}
}
