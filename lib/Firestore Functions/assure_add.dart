import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> AssureAdd(String email,String nom,int cin,DateTime date,int numero,String caisse) async{
  CollectionReference assure = FirebaseFirestore.instance.collection("assure");
  assure.add({
    "email": email,
    "nom": nom,
    "cin": cin,
    "date": date,
    "numero": numero,
    "caisse": caisse,}).then((value) => print("assure added successfully"));
}