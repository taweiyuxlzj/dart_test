class Spacecraft {
  String name;
  DateTime launchDate;

  // 构造函数，带有可以直接为成员变量赋值的语法糖。
  Spacecraft(this.name, this.launchDate) {
    // 这里可以实现初始化代码。
  }

  // 命名构造函数，转发到默认构造函数。
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // 只读的非 final 的属性

  // 方法。
  void describe() {
    print('宇宙飞船：$name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('发射时间：$launchYear ($years years ago)');
    } else {
      print('尚未发射');
    }
  }
}

main() {
  var voyager = Spacecraft('旅行者一号', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('旅行者三号');
  voyager3.describe();
}
