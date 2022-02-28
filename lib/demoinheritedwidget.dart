import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {

  @override
  _DemoInheritedWidgetState createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  String text = "Xin chào";
  int number = 0;

  void setText(){
    setState(() {
      text = "Đã cập nhật";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Inherited"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(onPressed: setText, child: Text("Click Me")),
            MyInheritedWidget(
                child: Ongba(
                  child: Chame(
                    child: Concai(),
                  ),
                ),
                number: number
            )
          ],
        ),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget{
  Widget child;
  late int number;

  MyInheritedWidget({required this.child, required this.number}) : super(child: child);

  static MyInheritedWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    return true;
  }

}


class Ongba extends StatelessWidget {
  late Widget child;

  Ongba({required this.child});

  @override
  Widget build(BuildContext context) {
    print("Ong ba build");
    return Container(
      child: Column(
        children: [Text("abc"), child],
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
    print("Concai build");
    return Container();
  }
}
