import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {

  @override
  _DemoInheritedWidgetState createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  String text = "Xin chào";

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
            ElevatedButton(onPressed: setText, child: Text("Click Me")),
            Ongba(
              child: Chame(
                child: Concai(),
              ),
            ),
          ],
        ),
      ),
    );
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
