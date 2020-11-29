import 'package:flutter/material.dart';
import 'Page1.dart';
import 'package:file_picker/file_picker.dart';
import 'package:audioplayers/audioplayers.dart';

class Page2 extends StatefulWidget {
  static final String id = "page2";

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            }),
        title: Text(
          "Page 2",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(22, 22, 22, 3),
                child: Text(
                  "Crop the selected track to Maximum 15 Seconds track.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  "Use slider to adjust the time.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 40,
              width: width1,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: height1/5),
            child: Icon(
              Icons.play_circle_outline_sharp,
              color: Colors.orange,
              size: width1 / 4,
            ),
          )
        ],
      ),
      bottomSheet: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 50,
            width: width1,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              color: Colors.orange,
              elevation: 4,
              disabledColor: Colors.orange,
              onPressed: () {},
              child: Text(
                "Crop and Select",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
