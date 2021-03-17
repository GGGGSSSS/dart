// Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class.
// For example,   a factory constructor might return an instance from a cache, or it might return an instance of a subtype.
// 当你使用factory关键词时，你能控制在使用构造函数时，并不总是创建一个新的该类的对象，
// 比如它可能会从缓存中返回一个已有的实例，或者是返回子类的实例

class Logger {
  final String name;
  bool mute = false;

  // _cache 变量是库私有的，因为在其名字前面有下划线。
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
