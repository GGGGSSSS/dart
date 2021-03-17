main() {
  printInfo('kobe', 18, 1.88);
  printInfo('kobe');
  print('function');
}

void printInfo(String name, [int age = 3, double height = 4]) {
  print('$name $age $height');
}
