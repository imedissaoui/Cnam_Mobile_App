import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class RemboursementPres extends StatelessWidget {
  const RemboursementPres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Remboursement Prestataire'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(
      ),
    );
  }
}
