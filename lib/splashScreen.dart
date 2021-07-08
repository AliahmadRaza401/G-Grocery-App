import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceri_ui/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // color: Color(0xffEA5921),
      // decoration: new BoxDecoration(
      //   gradient: new LinearGradient(
      //     begin: Alignment.topLeft,
      //     end: Alignment.topRight,
      //     colors: [Colors.orange, Color(0xffed5a5a)],
      //   ),
      // ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/rglogo.png",
              // color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
