import 'package:flutter/material.dart';

import 'app_colors.dart';
class NewSimple extends StatelessWidget {
  String text;
  Icon icon;
  NewSimple({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,

      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.Blue,
      ),
          child : Column(
            children: [
              IconButton(
                icon :  icon,
                onPressed:null,

              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),

    );
  }
}
