import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:pcd2/Pages/admin_login_page.dart';
import 'package:pcd2/Pages/loginPrestataire.dart';
import 'package:pcd2/Pages/login_page_assure.dart';
import 'package:pcd2/Pages/sign_up_page.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(

        backgroundColor: AppColors.Blue,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline,color: Colors.white,),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminLoginPage()),
              );
            },
            iconSize: 40,
          ),

        ],
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: (){},
          iconSize: 45,
        ),

        title: Text("Bienvenue"),




      ),
      sideBar: SideBar(
        backgroundColor: AppColors.white,
        items: const [
          MenuItem (
            title: 'Se connecter',
            route: '/',
            icon: Icons.login,
          ),
          MenuItem(
            title: 'Inscription',
            icon: Icons.account_box,
            children: [
              MenuItem(
                title: 'Assurés',
                route: '',
                icon: Icons.person_sharp,
              ),
              MenuItem(
                  title: 'Prestataires',
                  route: '',
                  icon: Icons.person
              ),
            ],
          ),

        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 90,
          width: double.infinity,
          color: AppColors.LightGrey,
          child: Row (
              children : [
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child : IconButton(onPressed: null, icon: Icon(Icons.account_circle_outlined))
                ),
                SizedBox(width: 10,),
                Text(
                  'Bienvenue',
                  textAlign : TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              '',
              textAlign : TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 250,
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
              height: 550,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Se Connecter",
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
                        MaterialPageRoute(builder: (context) =>LoginPageAssure()),
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
                        MaterialPageRoute(builder: (context) => const LogIn()),
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

                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width: 20,),
                        Text(
                          "Vous n'avez pas un compte ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                        FlatButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                          child: Text(
                          "S'inscrire",
                          style: TextStyle(
                              color: AppColors.Yellow,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ), ),
                      ],
                    ),
                    SizedBox(height: 10),
                    /*Container(
                      padding: EdgeInsets.all(5),
                      width: 140,
                      height: 50,
                      child: Container(
                        child: Row(
                          children: [

                            SizedBox(width: 10),
                            Text(
                              "S'inscrire",
                              style: TextStyle(
                                  fontSize: 25,color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),*/
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
