import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelic/screens/Main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Main()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Background.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Image.asset("assets/images/logo.png"),
          )),
    );
  }
}
