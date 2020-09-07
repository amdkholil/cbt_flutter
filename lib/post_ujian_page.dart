import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:web_test/main_page.dart';

class PostUjianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => Get.offAll(MainPage()),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.deepOrange,
              // title: Text("Ujian selesai."),
              flexibleSpace: Positioned(
                child: Center(
                  child: Text(
                    "Ujian Selesai",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Center(
              child: Container(
                  color: Colors.green[50],
                  width: 900,
                  child: Text(
                    "Ujian Selesai,\n Terimakasi!",
                    textAlign: TextAlign.center,
                  )),
            ),
          ),
        ));
  }
}
