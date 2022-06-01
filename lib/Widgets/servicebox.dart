import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appcolors.dart';

class ServiceBox extends StatelessWidget {
  String Name;
  String Icon;
  ServiceBox({Key? key, required this.Icon, required this.Name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 163,
      width: 163,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: AppColors.LightGrey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.LightGrey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/' + Icon + '.png',
                    ))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              Name,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
