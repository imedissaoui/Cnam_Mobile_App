import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pcd2/Pages/Home.dart';
import '../Widgets/app_colors.dart';
import 'loginPrestataire.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 7);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      body: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(

              /*gradient: LinearGradient(
                  colors: [new Color(0xff123456), new Color(0xff2E4A6F)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )*/
            ),
          ),
          Container(
            decoration: BoxDecoration(

            ),
            child: Center(
              child: Container(
                child: Image.asset('assets/cnam_logo.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
