import 'package:flutter/material.dart';
import 'package:pcd2/Pages/BaseDeDonnees.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import '../Widgets/NewSimple.dart';
import '../Widgets/Simple.dart';
class Tables extends StatelessWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        title: Text('Tables'),
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
            FlatButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BaseDeDonnees()),
            );
            }, child: Container(
              alignment: Alignment.center,
              height: 120,
              child: Text( 'Assurés',
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
            FlatButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BaseDeDonnees()),
            );
            }, child: Container(
              alignment: Alignment.center,
              height: 120,
              child: Text( 'Prestataires',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ), ),
            SizedBox(
              height: 10,
            ),
            FlatButton(onPressed: (){
            }, child: Container(
              alignment: Alignment.center,
              height: 120,
              child: Text( 'Operations',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ), ),
            SizedBox(
              height: 10,
            ),
            FlatButton(onPressed: (){
            }, child: Container(
              alignment: Alignment.center,
              height: 120,
              child: Text( 'Medicaments',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ), ),
            SizedBox(
              height: 10,
            ),
            FlatButton(onPressed: (){
            }, child: Container(
              alignment: Alignment.center,
              height: 120,
              child: Text( 'Appareils et Materiels',
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
