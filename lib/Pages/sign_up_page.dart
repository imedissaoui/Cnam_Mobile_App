import 'package:flutter/material.dart';
import 'package:pcd2/Pages/Home.dart';
import 'package:pcd2/Pages/SignupPres.dart';
import 'package:pcd2/Pages/loginPrestataire.dart';
import 'package:pcd2/Pages/login_page_assure.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(

        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: (){},
          iconSize: 45,
        ),
        title: Text("Bienvenue"),




      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 300,
              child: Center(


                child: Image(
                  height: 200,
                  width: 270,
                  image: AssetImage('assets/cnam.png'),
                ),
              ),
              decoration: BoxDecoration(

              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              height: 600,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "S'inscrire",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold

                            ),
                          ),
                          SizedBox(height: 30),


                        ],
                      ),

                    ),
                    FlatButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>SignUp()),
                      );
                    }, child: Container(
                      padding: EdgeInsets.all(5),

                      height: 50,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              child: Icon(Icons.account_box_sharp,
                                size: 45,

                              ),
                              decoration: BoxDecoration(
                                //color: AppColors.red
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Assuré",
                              style: TextStyle(
                                  fontSize: 25
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.LightGrey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ), ),
                    SizedBox(height: 15),
                    FlatButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPres()),
                      );
                    }, child:Container(

                      padding: EdgeInsets.all(5),

                      height: 50,
                      child: Container(
                        child: Row(

                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              child: Icon(Icons.account_box_sharp,
                                size: 45,

                              ),
                              decoration: BoxDecoration(
                                //color: AppColors.red
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(

                              "Prestataire",
                              style: TextStyle(
                                  fontSize: 25
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.LightGrey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ), ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Vous avez un compte deja ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                        FlatButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                          child: Text(
                            "Se connecter",
                            style: TextStyle(
                                color: AppColors.Yellow,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ), ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Container(),

                  ],
                ),
              ),

              decoration: BoxDecoration(

                color: AppColors.Blue,
                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(40.0),topRight: const Radius.circular(40.0)),


              ),

            ),


          ],
        ),
      ),

    );
  }
}
