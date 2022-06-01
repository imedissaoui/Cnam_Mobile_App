import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class InfoDemandeVis extends StatelessWidget {
  const InfoDemandeVis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoDemandeVisualtion'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { },

        ),
      ),
      body :  SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),

        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'id demande',
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'Numero Bulletin',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'Avis administratif',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'Avis medical',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'date depot',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'durée de validité',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'Service',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text( 'date de modification',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                color: AppColors.Blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
