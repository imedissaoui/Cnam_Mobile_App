import 'package:flutter/material.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import '../Widgets/NewSimple.dart';
import '../Widgets/Simple.dart';
class Retraite extends StatelessWidget {
  const Retraite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        title: Text('Service Retraite'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
      ),
    );
  }
}
