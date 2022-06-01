import 'package:flutter/material.dart';

import 'app_colors.dart';
class Simple extends StatelessWidget {
  String text;
  Simple({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: AppColors.Blue,
      margin: EdgeInsets.symmetric(horizontal: 30,),
      child : Row (
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon (
              Icons.edit,
              color: Colors.white,
            ),

          ),
          IconButton(
            onPressed: (){},
            icon: Icon (Icons.airplay_rounded,
              color: Colors.white,),
          ),
          SizedBox(width: 70,),
          Container(
            alignment: Alignment.center,
            child: Text(
                text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
