void main() {
  new Future.sync(() => print("33333"));
  new Future(() => futureTask) //  异步任务的函数
      .then((m) => "futueTask execute result:$m") //   任务执行完后的子任务
      .then((m) => m.length) //  其中m为上个任务执行完后的返回的结果
      .then((m) => printLength(m))
      .whenComplete(() => whenTaskCompelete); //  当所有任务完成后的回调函数

  new Future.sync(() => print("11111111111111"));
  new Future.delayed(new Duration(seconds: 1), () => {print("date")});
  new Future.delayed(new Duration(seconds: 1), () => {print("date")});
  new Future.delayed(new Duration(seconds: 5), () => {print("date5")});
  new Future.delayed(new Duration(seconds: 1), () => {print("date")});
  new Future.delayed(new Duration(seconds: 3), () => {print("date3")});
  new Future.delayed(new Duration(seconds: 1), () => {print("date")});
  new Future.delayed(new Duration(seconds: 2), () => {print("date2")});
  new Future.delayed(new Duration(seconds: 1), () => {print("date")});
  new Future.sync(() => print("222222"));
}

int futureTask() {
  return 21;
}

void printLength(int length) {
  print("Text Length:$length");
}

void whenTaskCompelete() {
  print("Task Complete");
}
