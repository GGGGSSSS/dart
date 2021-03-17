main(List<String> args) {
  Location l1 = Location(10, 20);
  Location l2 = Location(10.1, 20.2);
}

class Location<T> {
  T x;
  T y;

  Location(this.x, this.y);
}
