import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> sayHelloto(String name) {
    // return Future.value("Hello $name");
    // return Future.error("error");
    return Future.delayed(Duration(seconds: 5), () {
      return "I am $name";
    });
  }

  String? greetings;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    sayHelloto("trump").then((value) {
      setState(() {
        greetings = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: greetings == null ? CircularProgressIndicator() : Text(greetings!),
    ));
  }
}
