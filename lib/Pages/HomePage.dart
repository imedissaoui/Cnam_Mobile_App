import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,

              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(bottomLeft: const Radius.circular(80.0)),
                color: AppColors.LightGrey
              ),
              child: Center(
                child: Image(
                  image: AssetImage('assets/cnam.png'),
                  height: 200,
                ),

              ),
            ),

            Container(
                padding: EdgeInsets.only(left: 20,right: 20),
              child:Center(
                child: Column(
                  children: [
                    Text(
                      "S'inscrire ",
                      style: TextStyle(
                          fontSize: 50,
                          color: AppColors.Blue
                      ),
                    ),
                    Text(
                      "AS ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black
                      ),
                    ),
                  ],
                )
              )
              
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  Container(
                    height: 50,

                    decoration: BoxDecoration(
                        color: AppColors.Blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child:Text(
                          "Assure",
                        style: TextStyle(
                          fontSize: 25,color: Colors.white
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,

                    decoration: BoxDecoration(
                        color: AppColors.Blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child:Text(
                        "Prestataire",
                        style: TextStyle(
                            fontSize: 25,color: Colors.white
                        ),
                      ),

                    ),
                  ),


                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}
