import 'package:flutter/material.dart';
class DemoBasicProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo basic provider"),
      ),
      body: BasicProviderContainer(),
    );
  }
}

class BasicProviderContainer extends StatefulWidget {

  @override
  _BasicProviderContainerState createState() => _BasicProviderContainerState();
}

class _BasicProviderContainerState extends State<BasicProviderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InCreaseButton(),
          TextCount(),
          DecreaseButton()
        ],
      ),
    );
  }
}

class TextCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Count : 0");
  }
}

class InCreaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){

        },
        child: Text("+")
    );
  }
}
class DecreaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){

        },
        child: Text("-")
    );
  }
}

