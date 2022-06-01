import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcd2/Firestore%20Functions/assure_add.dart';
import 'package:pcd2/Models/user_model.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';
import 'package:pcd2/Pages/sign_up_page.dart';
import 'package:pcd2/Pages/utilisateur_non_confirme_page.dart';

import '../Widgets/app_colors.dart';
import 'assure_profile_page.dart';

class SignUp extends StatefulWidget {

  CollectionReference assure = FirebaseFirestore.instance.collection("assure");

  @override

  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth=FirebaseAuth.instance;
  bool isObscure=true;
  CollectionReference assure = FirebaseFirestore.instance.collection("assure");
  final Caisse = [

    'CNSS',
    'CNRPS',
    'Autre',
  ];

  var emaila;
  var noma;
  var cina;
  var numeroa;
  var datea;
  var caissea;
  var confirmePassworda;
  var Passworda;


  String? value = 'CNSS';
  final _email = TextEditingController();
  final _nom = TextEditingController();
  final _cin = TextEditingController();
  final _numero = TextEditingController();
  final _daten = TextEditingController();
  final _caisse = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription Assuré'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: Colors.white,),),
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 47),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,,
                ),
                    color: Color(0xffEEEEEE)),
              ],*/
            ),
            child: TextField(
              onChanged: (value){emaila=value;},
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: AppColors.Blue,),

                hintText: "Enter Email",
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
              onChanged: (value){noma=value;},
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
              /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
            ),
            child: TextField(
              onChanged: (value){cina=value;},
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

              obscureText: isObscure,
              onChanged: (value){Passworda=value;},
              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: AppColors.Blue,
                ),
                suffixIcon: InkWell(
                  onTap: _TogglePassword,
                    child: Icon(Icons.visibility ,color: AppColors.Blue,)),

                hintText: "Mot de passe",
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

              obscureText: isObscure,


              onChanged: (value){confirmePassworda=value;},

              cursorColor: Color(0xff123456),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: AppColors.Blue,
                ),
                suffixIcon: InkWell(
                    onTap: _TogglePassword,
                    child: Icon(Icons.visibility ,color: AppColors.Blue,)),
                hintText: "confirmez mot de passe",
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
              onChanged: (value){numeroa=value;},
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
                color: AppColors.white,
                /*boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],*/
              ),
              child: TextField(
                  onChanged: (value) {


                    datea=value;
                  },

                cursorColor: Color(0xff123456),

                // cursorColor: Color(0xff123456),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calendar_month,
                    color: AppColors.Blue,
                  ),

                  labelText: "Votre Age  ",
                  labelStyle: TextStyle(fontSize: 16,color: AppColors.Blue),
                  hintText: "entrer votre age ",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              )),
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

                value: value = value,
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down, color: AppColors.Blue),
                isExpanded: true,
                items: Caisse.map(BuildMenuItem).toList(),
                onChanged: (value) {
                  setState(() => this.value = value);
                  caissea=value;
                  },
              )),
          GestureDetector(
            onTap: () async {

              if(Passworda==confirmePassworda){

                await SignUpAssure(emaila, Passworda);
                Navigator.push(context, MaterialPageRoute(builder:(context) =>  NonConfirmedUserPage()));

              }else {
                Fluttertoast.showToast(msg: "saisir la même password SVP !");
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
                onTap: () => {Navigator.pop(context)},
                child: Text(
                  "S'authentifier maintenant",
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
  void _TogglePassword(){
    if(isObscure==true){
    isObscure=false;
  }else{
  isObscure=true;
  }
  setState(() {

  });}
  DateTime _date = DateTime.now();

 SignUpAssure(String email,String password) async {
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
    UserAssureModel userAssureModel = UserAssureModel();
    userAssureModel.uid=user?.uid;
    userAssureModel.nom=noma;
    userAssureModel.numero=numeroa;
    userAssureModel.age=datea;
    userAssureModel.cin=cina;
    userAssureModel.email=emaila;
    userAssureModel.caisse=caissea;
    userAssureModel.password=Passworda;
    firebaseFirestore.collection("assure").doc(user?.uid).set(userAssureModel.toMap());
    print("assure ajouté ");
}
}
