import 'package:flutter/material.dart';

class UserPrestataireModel{
  String ?uid;
  String ?nom;
  String ?email;
  String ?cin;
  String ?password;
  String ?type;

  String ?numero;

  UserPrestataireModel({this.type,this.cin,this.email,this.nom,this.numero,this.password,this.uid});
  factory UserPrestataireModel.fromMap(map) {
    return UserPrestataireModel(
      uid:map['uid'],
      nom:map['nom'],
      email:map['email'],
      cin:map['cin'],
      password:map['password'],
      numero:map['numero'],
      type:map['type'],

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
      'type': type,

    };
  }

}