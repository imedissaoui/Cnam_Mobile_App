import 'package:flutter/material.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/materielBox.dart';

class SendBordereaux extends StatefulWidget {
  const SendBordereaux({Key? key}) : super(key: key);

  @override
  State<SendBordereaux> createState() => _AchatMaterielState();
}

class _AchatMaterielState extends State<SendBordereaux> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context
            );
          },
        ),
        title: Text(
          'Bordereaux de Patient',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/Bordereau.png'),
                height: 110,
                width: 350,
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Pour envoyer un bordereau,veuillez remplir les champs ci-dessous ou scanner le fichier nécessaire.",
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.Blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "NB : une seule méthode est suffisante soit remplir le formulaire soit importer un fichier",
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.LightGrey,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff123456),
                    ),
                    hintText: "Nom Complet du Patient",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.LightGrey,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.password_rounded,
                      color: Color(0xff123456),
                    ),
                    hintText: "N° Matricule ",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.LightGrey,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.attach_money,
                      color: Color(0xff123456),
                    ),
                    hintText: "TTC",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.LightGrey,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color(0xff123456),
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        _selectDate(context);
                      });
                    },
                    // cursorColor: Color(0xff123456),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.calendar_month,
                        color: Color(0xff123456),
                      ),
                      labelText: 'select date',
                      labelStyle: TextStyle(fontSize: 15),
                      hintText: (_date.toString().substring(0, 10)),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 350,
                child: Divider(
                  color: AppColors.black,
                  height: 20,
                ),
              ),
              Container(
                child: MaterielBox(
                    text: "         Importer votre fichier", press: () {}),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 55,
                width: 370,

                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(
                      context
                    );
                  },
                  color: AppColors.Blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      " Envoyer le bordereau ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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

  DateTime _date = DateTime.now();
}
