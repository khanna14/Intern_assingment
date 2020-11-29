import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Page2.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:audioplayers/audioplayers.dart';

class Page1 extends StatefulWidget {
  static final String id = "page1";

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    TextEditingController nameController = TextEditingController();
    String fullName = '';
    String trackName = '';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height1 / 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            }),
        title: Text(
          "Page 1",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: SizedBox(
              width: width1,
              height: height1 / 4,
              child: DottedBorder(
                dashPattern: [6, 3],
                color: Colors.black,
                radius: Radius.circular(10),
                strokeWidth: 1.5,
                child: GestureDetector(
                  onTap: () async {
                    var path = await FilePicker.getFilePath(type: FileType.audio);
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    });
                  //  playAudioFromLocalStorage(path);
                  },
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                            child: Icon(
                              Icons.playlist_add,
                              color: Colors.orange,
                              size: width1 / 8,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 3, 8.0, 8.0),
                            child: Text(
                              "Tap here to select track form phone",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: height1 / 5,
              width: height1 / 5,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox.expand(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          heightFactor: 2,
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                              Text(
                                " Add Cover Photo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: height1 / 5),
            child: TextField(
              controller: nameController,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the Name of Track*',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              onChanged: (text) {
                setState(() {
                  fullName = text;
                  // you can access nameController in its scope to get
                  // the value of text entered as shown below
                  fullName = nameController.text;
                });
              },
            ),
          ),
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
              // onPressed: () async {
              //   var path =
              //   await FilePicker.getFilePath(type: FileType.audio);
              //   // setState(() {
              //   //   _isPlaying = true;
              //   // });
              //   // playAudioFromLocalStorage(path);
              // },
              child: Text(
                "Upload",
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
