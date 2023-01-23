import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: "/",
    //Named Routing
    routes: {
      "/": (context) => Screen1(),
      "/screen2": (context) => Screen2(),
      "/screen3": (context) => Screen3(),
    },
  ));
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("On screen 1");
                Navigator.pushNamed(context, "/screen2");
              },
              child: Container(
                child: Text("Screen 1"),
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          InkWell(
            onTap: () {
              print("On screen 2");
              Navigator.pushNamed(context, "/screen3");
            },
            child: Container(
              child: Text("Screen 2"),
            ),
          )
        ]),
      )),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          InkWell(
            onTap: () {
              print("On screen 3");
              Navigator.pushNamed(context, "/");
            },
            child: Container(
              child: Text("Screen 3"),
            ),
          )
        ]),
      )),
    );
  }
}
