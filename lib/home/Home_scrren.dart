import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Open-Close Doors"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if(i<110)
                {
                  i = i + 30;
                }
            });
          },
          onDoubleTap: () {
            setState(() {
              if(i>0)
              {
                i = i - 30;
              }
            });
          },
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                    vertical: BorderSide(color: Colors.grey, width: i),
                    horizontal: BorderSide(color: Colors.black, width: 50))),
          ),
        ),
      ),
    );
  }
}
