import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomTextField.dart';
import '../Widgets/app_colors.dart';
class InfoDemandeEdit extends StatefulWidget {
  const InfoDemandeEdit({Key? key}) : super(key: key);

  @override
  State<InfoDemandeEdit> createState() => _InfoDemandeState();
}

class _InfoDemandeState extends State<InfoDemandeEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(
          title: const Text('INFORMATIONS'),
          backgroundColor: AppColors.Blue,
          leading: IconButton(
    icon: Icon (Icons.arrow_back),
      onPressed : () {}),
      ),
      body : SingleChildScrollView(
        child : Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children:  [
              CustomTextField( icon : Icons.edit, hint : 'Demande_id'),
              CustomTextField( icon : Icons.edit, hint : 'Numéro de Bulltin'),
              CustomTextField( icon : Icons.edit, hint : 'Concerné'),
              CustomTextField( icon : Icons.edit, hint : 'Service Concerné'),
              CustomTextField( icon : Icons.edit, hint : 'Avis Administratif'),
              CustomTextField( icon : Icons.edit, hint : 'Date depot'),
              CustomTextField( icon : Icons.edit, hint : 'Date edition'),
              CustomTextField( icon : Icons.edit, hint : 'Avis médical'),
              CustomTextField( icon : Icons.edit, hint : 'Durée de validité'),
              ElevatedButton (
                  child: Text('Enregistrer les modificaitions'),

                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),),
                  ),), onPressed: () {} ,
          ) ,
          ]
        ),
      ),
      ),
    );
  }
}
