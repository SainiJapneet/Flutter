import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyWidget();
  }
}

class MyWidget extends State<MyStatefulWidget> {
  List<String> myTags = [];
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller,
                  onChanged: (updatedText) {
                    myTags = getMytags(updatedText);
                    setState(() {}); // to update the UI
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [...getMyContainer()],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  List<Widget> getMyContainer() {
    return myTags
        .map((e) => Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.blueAccent,
              child: Text(e),
            ))
        .toList();
  }

  List<String> getMytags(String text) {
    List<String> myTags = [];
    for (var i = 0; i < text.length; i++) {
      if (i > text.length - 1) break;
      if (text[i] == '#') {
        String newEntry = '';
        while (text[i] != ' ' && i != text.length - 1) {
          if (text[i] == '#') {
            i++;
            continue;
          }
          newEntry += text[i];
          i++;
        }
        myTags.add(newEntry);
      }
    }
    return myTags;
  }
}
