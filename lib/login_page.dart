import 'package:flutter/material.dart';
import 'package:web_test/main_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200], blurRadius: 3, spreadRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              child: Column(
                children: [
                  SizedBox(
                      width: 200,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Image(
                            image: NetworkImage(
                                "https://latiseducation.com/assets/img/Icon/logo-black.png"),
                            fit: BoxFit.scaleDown,
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.deepOrange[50],
                      filled: true,
                      hoverColor: Colors.deepOrange[50],
                      labelText: "Username or Email",
                      labelStyle: TextStyle(
                          color: Colors.deepOrange,
                          backgroundColor: Colors.deepOrange[50]),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange)),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.deepOrange[50],
                      filled: true,
                      hoverColor: Colors.deepOrange[50],
                      labelStyle: TextStyle(
                          color: Colors.deepOrange,
                          backgroundColor: Colors.deepOrange[50]),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange)),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lupa Password?",
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 45,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Get.off(MainPage());
                },
                color: Colors.deepOrange,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
