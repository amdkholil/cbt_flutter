import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:web_test/post_ujian_page.dart';

int n = 1;
String answer;
ScrollController focusScroll = new ScrollController();
GlobalKey dataKey = new GlobalKey();
ItemScrollController itemScrollController = ItemScrollController();
ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

int detik = 60;
int menit = 29;

class SoalPage extends StatefulWidget {
  @override
  _SoalPageState createState() => _SoalPageState();
}

class _SoalPageState extends State<SoalPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => {
          Timer.periodic(Duration(seconds: 1), (timer) {
            if (detik == 0 && menit > 0) {
              menit--;
              detik = 3;
            }
            setState(() {
              if (detik == 0 && menit == 0) {
                timer.cancel();
                Get.off(PostUjianPage());
              } else {
                detik--;
              }
            });
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: () async => false,
      onWillPop: () => _onWillPop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //
          // AppBar Soal Page
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              backgroundColor: Colors.deepOrange,
              flexibleSpace: Positioned(
                child: Center(
                  child: Container(
                    width: 900,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 5, 5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '$n',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.yellow[800],
                              shape: BoxShape.circle),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            // width: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.yellow[800],
                            ),
                            child: Text(
                              "$menit:$detik",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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

          // body soal_page
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: 900,
                color: Colors.green[50],
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: Image(
                          image: NetworkImage("https://picsum.photos/1280/720"),
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width - 20,
                        ),
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      height: 10,
                    ),
                    Text("A. First Option for you."),
                    Text("B. Second Option for he."),
                    Text("C. Third Option for she."),
                    Text("D. Fourth Option for me."),
                    Container(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange[200],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                              height: 30,
                              child: Text(
                                "Choose the answer",
                                style: TextStyle(
                                  color: Colors.deepOrange[800],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    answer = "A";
                                    setState(() {});
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: (answer == "A"
                                        ? Colors.green
                                        : Colors.deepOrange[50]),
                                    child: Text("A"),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    answer = "B";
                                    setState(() {});
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: (answer == "B"
                                        ? Colors.green
                                        : Colors.deepOrange[50]),
                                    child: Text("B"),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    answer = "C";
                                    setState(() {});
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: (answer == "C"
                                        ? Colors.green
                                        : Colors.deepOrange[50]),
                                    child: Text("C"),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    answer = "D";
                                    setState(() {});
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: (answer == "D"
                                        ? Colors.green
                                        : Colors.deepOrange[50]),
                                    child: Text("D"),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // footer
          // bottom Navigation
          bottomNavigationBar: Container(
            alignment: Alignment.center,
            height: 120,
            color: Colors.deepOrange,
            child: Column(
              children: [
                Container(
                  height: 70,
                  padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                  child: Row(
                    children: [Expanded(child: Center(child: buildList()))],
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.deepOrange[700],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          if (n > 1) {
                            n = n - 1;
                          }
                          itemScrollController.jumpTo(index: n - 1);
                          setState(() {});
                        },
                        color: Colors.deepOrange[400],
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text(
                              "Prev",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          finish();
                        },
                        color: Colors.deepOrange[400],
                        child: Row(
                          children: [
                            Text(
                              "Finish",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          if (n < 20) {
                            n = n + 1;
                          }
                          itemScrollController.jumpTo(index: n - 1);
                          setState(() {});
                        },
                        color: Colors.deepOrange[400],
                        child: Row(
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildList() {
    Color active = Colors.blue;

    return ScrollablePositionedList.builder(
        itemCount: 20,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // controller: focusScroll,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
        itemBuilder: (BuildContext context, int i) {
          var x = i + 1;
          return Container(
            key: ValueKey(n),
            width: 50,
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: (n == x ? active : Colors.deepOrange[300]),
              boxShadow: [
                BoxShadow(
                    color: Colors.deepOrange[800],
                    blurRadius: 2,
                    spreadRadius: 1)
              ],
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                onTap: () {
                  n = x;
                  setState(() {});
                },
                splashColor: Colors.lightBlue,
                child: Center(
                  child: Text(
                    '$x',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Notice!'),
            content: new Text(
                'Tes sedang berlangsung, silahkan selesaikan tes ini terlebih dahulu.'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('OK'),
              ),
              // new FlatButton(
              //   onPressed: () => Navigator.of(context).pop(true),
              //   child: new Text('Yes'),
              // ),
            ],
          ),
        )) ??
        false;
  }

  Future<bool> finish() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Notice!'),
            content: new Text('Anda yakin untuk menyelesaikan tes ini?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () {
                  detik = 0;
                  menit = 0;
                },
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
