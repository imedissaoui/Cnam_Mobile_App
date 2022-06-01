import 'package:flutter/material.dart';

import 'appcolors.dart';

bool readVariable = true;

class InformationsBox extends StatelessWidget {
  InformationsBox({
    Key? key,
    required this.obscure,
    required this.Sicon,
    required this.Picon,
    required this.text,
    required this.value,
  }) : super(key: key);
  bool obscure = true;
  String text;
  String value;
  IconData Sicon;
  IconData Picon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$text :',
          style: TextStyle(
              color: AppColors.Blue, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.Blue)),
          child: TextField(
            style: TextStyle(color: AppColors.Blue),
            obscureText: obscure,
            readOnly: readVariable,
            decoration: InputDecoration(
              hintText: value,
              hintStyle: TextStyle(
                color: AppColors.black,
                fontSize: 15,
              ),
              labelText: null,
              labelStyle: TextStyle(color: AppColors.black),
              prefixIcon: Icon(
                Picon,
                color: AppColors.Blue,
              ),
              suffixIcon: IconButton(
                  onPressed: () => readVariable = false,
                  icon: Icon(
                    Sicon,
                    color: AppColors.LightGrey,
                  )),
              border: InputBorder.none,
            ),
            //keyboardType: ,
            textInputAction: TextInputAction.done,
          ),
        ),
      ],
    );
  }
}
