import 'package:flutter/material.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import '../Widgets/NewSimple.dart';
import '../Widgets/Simple.dart';
class Choisir extends StatelessWidget {
  const Choisir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        title: Text('Chsoisissez'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            FlatButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            }, child: Container(
              alignment: Alignment.center,
              height: 140,
              child: Text( 'Assuré',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            }, child: Container(
              alignment: Alignment.center,
              height:
              140,
              child: Text( 'Prestataire',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ), ),
          ],
        ),
      ),
    );
  }
}
