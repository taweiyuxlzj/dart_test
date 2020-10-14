// //为了减少 APP 的启动时间，加载很少使用的功能，我们还可以延迟导入库。使用 deferred as关键字延迟导入
// import 'package:deferred/hello.dart' deferred as hello;
// // 当需要使用时，再通过库标识符调用 loadLibrary函数加载
// hello.loadLibrary();
// //使用show和hide关键字控制库中成员的可见性

// // 仅导入foo，屏蔽库中其他成员
// import 'package:lib1/lib1.dart' show foo;

// // 屏蔽foo，库中其他成员都可见
// import 'package:lib2/lib2.dart' hide foo;
