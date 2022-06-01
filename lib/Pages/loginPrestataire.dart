import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcd2/Pages/SignupPres.dart';
import 'package:pcd2/Pages/assure_profile_page.dart';
import 'package:pcd2/Pages/informationsAssure.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/Input.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  FirebaseAuth _auth=FirebaseAuth.instance;
  final _Email = TextEditingController();
  final _Password = TextEditingController();
  bool isObscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(

        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){Navigator.pop(context);},
          iconSize: 45,
        ),



      ),

      body: SingleChildScrollView(
        child: Column(
            children: [

              Container(

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
              Container(
                  height: 600,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.Blue,
                      borderRadius: new BorderRadius.only(topLeft: const Radius.circular(50.0),topRight: const Radius.circular(50.0)),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(

                            child: Text(
                              "Authentification prestataire",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          //InputField(),
                          SizedBox(height:25 ,),
                          BuidEmail(),
                          SizedBox(height:25 ,),
                          BuidPassword(),
                          SizedBox(height:10 ,),
                          FlatButton(onPressed: (){
                            ResetPrestatairePassword();

                          },
                            child: Container(
                            padding: EdgeInsets.only(left: 200),
                            child: Text("Mot de passe oubliée ?",

                              style: TextStyle(
                                  color: AppColors.Yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10)
                              ,),
                          ),),
                          SizedBox(height:10 ,),

                          FlatButton(onPressed: (){

                          },

                            child: FlatButton(onPressed: (){
                              LoginInPres(_Email.text, _Password.text);


                            },
                              child :   Container(
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: AppColors.green,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child : Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 20,),
                                    Text(
                                      "Se connecter",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),),
                                    SizedBox(width: 10,),
                                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)

                                  ],

                                ),
                              ), ),

                          ),
                          SizedBox(height: 20,),
                          Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  SizedBox(width: 10,),
                                  Text(
                                    "Vous n'avez pas encore un compte ?",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  FlatButton(onPressed: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>  SignUpPres()),);},
                                    child: Text(
                                      "S'inscrire",
                                      style: TextStyle(
                                          color:AppColors.Yellow,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                      ),
                                    ), ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),




                  )

              ),
            ]
        ),
      ),
    );
  }
  void LoginInPrestataire(String email,String password) async{
    await _auth.signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>  ProfilePage())),
    ) .catchError((e)=>print(e));

  }
  void _TogglePassword(){
    if(isObscure==true){
      isObscure=false;
    }else{
      isObscure=true;
    }
    setState(() {

    });}
  Widget BuidEmail()=>TextField(
    style: TextStyle(color: AppColors.white),
    controller: _Email,

    decoration: InputDecoration(
        hintText: "Tapez votre email ",
        hintStyle: TextStyle(color: Colors.white),
        labelText: "Votre email :",
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.person_sharp,color: Colors.white,),
        suffixIcon: IconButton(
            onPressed:()=> {_Email.clear()}, icon: Icon(Icons.close,color: Colors.white,)),
        //border: OutlineInputBorder()
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 2
            )
        )
    ),
    //keyboardType: ,
    textInputAction: TextInputAction.done,
  );
  Widget BuidPassword()=> TextField(
    controller: _Password,
    style: TextStyle(color: AppColors.white),
    obscureText: isObscure,
    decoration: InputDecoration(

        hintText: "Tapez votre Mot de passe ",
        hintStyle: TextStyle(color: Colors.white),
        labelText: "Mot de passe",
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.person_sharp,color: Colors.white,),
        suffixIcon: InkWell(
            onTap: _TogglePassword,
            child: Icon(Icons.visibility ,color: AppColors.white,)),
        //border: OutlineInputBorder()
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 2
            )
        )
    ),
    //keyboardType: ,
    textInputAction: TextInputAction.done,
  );


  void LoginInPres(String email,String password) async{
    await _auth.signInWithEmailAndPassword(email: email, password: password)
        .then((value) {

      Fluttertoast.showToast(msg: "Logged in successfully !");
    Navigator.push(
      context,
      MaterialPageRoute(builder:(context) =>  ProfilPrestataire()),
    ) ;
      

  }).catchError((e)=>Fluttertoast.showToast(msg: '${e.toString()}'));}
  void ResetPrestatairePassword(){
    _auth.sendPasswordResetEmail(email: _Email.text);
  }



}
