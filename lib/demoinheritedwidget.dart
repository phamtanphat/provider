import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {
  @override
  _DemoInheritedWidgetState createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo Inherited"),
        ),
        body: Ongba(
          child: Chame(child: Concai()),
        ));
  }
}

class MyInheritedWidget extends InheritedWidget {
  Widget child;
  late int number;

  MyInheritedWidget({required this.child, required this.number})
      : super(child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    return true;
  }
}

// Lớp wrapper chứa tất cả cá widget con tron màn hình này
class Ongba extends StatefulWidget {
  late Widget child;
  late int number;

  Ongba({required this.child});

  @override
  State<Ongba> createState() => _OngbaState();
}

class _OngbaState extends State<Ongba> {
  String text = "Xin chào";
  int number = 0;

  void setText() {
    setState(() {
      text = "Đã cập nhật";
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Ong ba build");
    return Container(
      child: Column(
        children: [
          Text(text),
          ElevatedButton(onPressed: setText, child: Text("Click Me")),
          MyInheritedWidget(child: widget.child, number: number)
        ],
      ),
    );
  }
}

class Chame extends StatelessWidget {
  late Widget child;

  Chame({required this.child});

  @override
  Widget build(BuildContext context) {
    print("Chame build");
    return Container(
      child: child,
    );
  }
}

class Concai extends StatelessWidget {
  const Concai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    int number = myInheritedWidget.number;
    print("Concai build");
    return Container(
      child: Text(number.toString()),
    );
  }
}
