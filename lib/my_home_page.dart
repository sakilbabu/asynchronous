import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  Future<String> sayHelloto(String name) {
    // return Future.value("Hello $name");
    // return Future.error("error");
    return Future.delayed(Duration(seconds: 5), () {
      return "I am data";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder(
        future: sayHelloto("jahangir"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error as String);
          } else {
            if (snapshot.hasData) {
              return Text(snapshot.data as String);
            } else {
              return CircularProgressIndicator();
            }
          }
        },
      )),
    );
  }
}
