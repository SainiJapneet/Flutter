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
      "/screen4": (context) => Screen4(),
      "/screen5": (context) => Screen5(),
    },
  ));
}

class Screen1 extends StatelessWidget {
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
              Navigator.pushNamed(context, "/screen4");
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

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          InkWell(
            onTap: () {
              print("On screen 4");
              Navigator.pushNamed(context, "/screen5");
            },
            child: Container(
              child: Text("Screen 4"),
            ),
          )
        ]),
      )),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          InkWell(
            onTap: () {
              print("On screen 5");
              Navigator.pushNamed(context, "/screen2");
            },
            child: Container(
              child: Text("Screen 5"),
            ),
          )
        ]),
      )),
    );
  }
}
