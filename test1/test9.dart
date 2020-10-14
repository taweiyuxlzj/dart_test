void main(List<String> args) {
  var a = OutSum(5, 5);
  print(a.result);
}

//Mixins 多继承,调用的方法会使用最后的继承类
class OutSum extends SumB with SumA {
  int i;
  int y;
  int result;
  OutSum(this.i, this.y) {
    result = i + y + InSum;
  }
}

class SumA {
  get InSum => 10;
}

class SumB {
  get InSum => 20;
}
