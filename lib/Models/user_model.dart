import 'package:flutter/material.dart';

class UserAssureModel{
  String ?uid;
  String ?nom;
  String ?email;
  String ?cin;
  String ?password;
  String ?caisse;
  String ?age;
  String ?numero;

  UserAssureModel({this.age,this.caisse,this.cin,this.email,this.nom,this.numero,this.password,this.uid});
  factory UserAssureModel.fromMap(map) {
    return UserAssureModel(
      uid:map['uid'],
      nom:map['nom'],
      email:map['email'],
      cin:map['cin'],
      password:map['password'],
      numero:map['numero'],
      caisse:map['caisse'],
      age:map['age'],
    );
  }
  Map<String,dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'nom': nom,
      'cin': cin,
      'password': password,
      'numero': numero,
      'caisse': caisse,
      'age': age,
    };
  }

}