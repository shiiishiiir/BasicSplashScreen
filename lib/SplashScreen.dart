import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(
          seconds: 10,
        ),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MyHomePage(title: "This Is Splash Screen")),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blueAccent.shade400,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blueAccent.shade700,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Icon(Icons.android, size: 70),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Splash Screen",
                style: TextStyle(
                  color: Colors.blueGrey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 5,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 10,
                      color: Colors.blueGrey.shade900,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  color: Colors.black54,
                  strokeWidth: 6,
                ),
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
                child: LinearProgressIndicator(
                  color: Colors.blueGrey,
                  minHeight: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
