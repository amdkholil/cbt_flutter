import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:web_test/soal_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            "Main Page",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 900,
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 1, 30),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              spreadRadius: 2,
                              blurRadius: 4)
                        ]),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Penting!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: "Sans Serif",
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 4,
                        child: Container(
                          child: Stack(children: [
                            Container(
                              width: 900,
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.text_snippet,
                                size: 40,
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Tes Matematika SMA")),
                            Container(
                              width: 500,
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                child: RaisedButton(
                                  onPressed: () {
                                    Get.to(SoalPage());
                                  },
                                  color: Colors.deepOrange[400],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Start Ujian",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
