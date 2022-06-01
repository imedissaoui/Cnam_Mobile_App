import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class HistoriqueConsultation extends StatelessWidget {
  const HistoriqueConsultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        title: Text('Historique Consultation'),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon : Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
