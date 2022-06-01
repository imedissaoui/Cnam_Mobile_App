import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcd2/Models/user_model_prestataire.dart';
import 'package:pcd2/Pages/confirmeIdentit%C3%A9.dart';
import 'package:pcd2/Pages/prestataire_non_confirme.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';
import 'package:pcd2/Pages/sign_up_page.dart';
import 'package:pcd2/Pages/utilisateur_non_confirme_page.dart';
import '../Widgets/app_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'loginPrestataire.dart';
class SignUpPres extends StatefulWidget {


  @override
  State<SignUpPres> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPres> {
  final FirebaseAuth _auth=FirebaseAuth.instance;
  bool isObscure=true;

  CollectionReference prestataire = FirebaseFirestore.instance.collection("prestataire");
  final nature = [
    'Hopital',
    'Medecin',
    'Pharmacie',
    'Clinique',
    'Laboratoire'
  ];
  var emailp;
  var nomp;
  var cinp;
  var numerop;
  var passwordp;
  var confirmePasswordp;
  var typep;
  String? value = 'Clinique';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription Prestataire'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(onPressed: (){Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpScreen()),
        );},icon: Icon(Icons.arrow_back,color: Colors.white,),),
      ),
      backgroundColor: AppColors.Blue,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                  color: AppColors.white, //background d'iamge
                ),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Image.asset('assets/cnam_logo.png'),
                          height: 150,
                          width: 240,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "S'inscrire",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.Blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){nomp=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: AppColors.Blue,
                    ),
                    hintText: "Nom Complet",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){emailp=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: AppColors.Blue,
                    ),
                    hintText: "Entrer  votre Email",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){passwordp=value;},

                  obscureText: isObscure,
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: AppColors.Blue,
                    ),
                    suffixIcon: InkWell(
                        onTap: _TogglePassword,
                        child: Icon(Icons.visibility ,color: AppColors.Blue,)),
                    hintText: "Mot de passe ",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){confirmePasswordp=value;},
                  obscureText: isObscure,
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: AppColors.Blue,
                    ),
                    suffixIcon: InkWell(
                        onTap: _TogglePassword,
                        child: Icon(Icons.visibility ,color: AppColors.Blue,)),
                    hintText: "confirmer mot de passe ",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){cinp=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: AppColors.Blue,
                    ),
                    hintText: "CIN",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){numerop=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: AppColors.Blue,
                    ),
                    hintText: "Numéro Téléphone",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              //date
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.Blue, width: 1),
                    color: AppColors.white,
                    /* boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],*/
                  ),
                  child: DropdownButton<String>(
                    icon: const Icon(Icons.arrow_downward_outlined),
                    value: value = value,
                    elevation: 16,
                    style:  TextStyle(color: AppColors.Blue),
                    isExpanded: true,
                    items: nature.map(BuildMenuItem).toList(),
                    onChanged: (value)
                    {
                      setState(() => this.value = value);
                      typep=value;
                    }
              )

                  ),
              GestureDetector(
                onTap: (){
                  if(passwordp==confirmePasswordp){

                    SignUpPrestataire(emailp, passwordp);
                    Navigator.push(context, MaterialPageRoute(builder:(context) =>  NonConfirmedUserPage()));

                  }else {
                    print("saisir la même password SVP !");
                  }


                  // Write Click Listener Code Here.
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    /*  gradient: LinearGradient(
                    colors: [(new Color(0xff123456)), new Color(0xff123456)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),*/

                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.green,
                    /*   boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],*/
                  ),
                  child: Text(
                    "S'INSCRIRE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Déja Inscrit?  ",
                    style: TextStyle(color: AppColors.LightGrey, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () => { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                    )},
                    child: Text(
                      "S'identifier maintenant",
                      style: TextStyle(color: AppColors.black, fontSize: 14),
                    ),
                  )
                ]),
              )
            ],
          )),
    );
  }

  DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 20),
    ),
  );

  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1974),
      lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      initialDatePickerMode: DatePickerMode.day, //dayyearmode
      selectableDayPredicate: (DateTime val) =>
      val.weekday == 6 || val.weekday == 7 ? false : true, //weedayoff
    );
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        //_date = DateFormat('yyyy-MM-dd – kk:mm').format(now);
      });
    }
  }
  void SignUpPrestataire(String email,String password) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password)
        .then((value){

          PostDetailsToFireStore();

        })
        .catchError((e)=>Fluttertoast.showToast(msg: '${e.toString()}'));
    Fluttertoast.showToast(msg: "compte crée !");
  }
  PostDetailsToFireStore() async{
    FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
    User? user=_auth.currentUser;
    UserPrestataireModel userAssureModel = UserPrestataireModel();
    userAssureModel.uid=user?.uid;
    userAssureModel.nom=nomp;
    userAssureModel.numero=numerop;
    userAssureModel.cin=cinp;
    userAssureModel.email=emailp;
    userAssureModel.type=typep;
    firebaseFirestore.collection("prestataire").doc(user?.uid).set(userAssureModel.toMap());
    print("prestataire ajouté ");
  }




  void _TogglePassword(){
    if(isObscure==true){
      isObscure=false;
    }else{
      isObscure=true;
    }
    setState(() {

    });}

  DateTime _date = DateTime.now();

}
