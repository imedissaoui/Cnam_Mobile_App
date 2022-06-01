import 'package:flutter/material.dart';

class DemandeModel{
  String ?uid;


  String? DateDepot;
  String? DateEdition;
  String? AvisMedical;
  String? AvisAdministrative;
  String? DureeDevalidite;
  String? type;
  String? Montant;

  DemandeModel({this.uid,this.DateDepot,this.DateEdition,this.AvisMedical,this.AvisAdministrative,this.DureeDevalidite,this.type,this.Montant});
  factory DemandeModel.fromMap(map) {
    return DemandeModel(
      uid:map['uid'],
      DateDepot:map['DateDepot'],
      DateEdition:map['DateEdition'],
      AvisMedical:map['AvisMedical'],
      AvisAdministrative:map['AvisAdministrative'],
      DureeDevalidite:map['DureeDevalidite'],
      type:map['type'],
      Montant:map['Montant'],
    );
  }
  Map<String,dynamic> toMap() {
    return {
      'uid': uid,
      'DateDepot': DateDepot,
      'DateEdition': DateEdition,
      'AvisMedical': AvisMedical,
      'AvisAdministrative': AvisAdministrative,
      'DureeDevalidite': DureeDevalidite,
      'type': type,
      'Montant': Montant,
    };
  }

}