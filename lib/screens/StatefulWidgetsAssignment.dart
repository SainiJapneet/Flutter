import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int myUnits = 0;
void main() {
  runApp(MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterWidget();
  }
}

class CounterWidget extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(207, 243, 240, 240)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Sarita\nBlood\nBank",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.square,
                            color: Colors.white,
                            size: 25,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 17,
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Blood Group",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "B +ve\n\n",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Add Units",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (myUnits > 0)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: onPressMinus1, child: Text("-")),
                            ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(myUnits.toString())),
                          ),
                          if (myUnits < 9)
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: onPressPlus1,
                                child: Text("+"),
                              ),
                            )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  void onPressMinus1() {
    setState(() {
      myUnits -= 1;
    });
  }

  void onPressPlus1() {
    setState(() {
      myUnits += 1;
    });
  }
}
