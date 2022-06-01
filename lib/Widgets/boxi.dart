import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class Boxi extends StatelessWidget  {
  String Name;
  String Service;
  String Decision;
  Boxi({Key? key,required this.Name,required this.Service,required this.Decision}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
      border: Border.all(width: 3,color: AppColors.Grey,

    ),
    color: AppColors.Blue,
    borderRadius: BorderRadius.circular(15),
    ),
      child: Row (

        children: [
          Container(
          child : Column(
            children: [
              Row( children :[
                Container(
                  margin: EdgeInsets.only(left:30),
                  child: IconButton(
                    icon : Icon(Icons.edit, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
    ]
              ),
              Row(
                children: [
                  Column (
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text (
                          Name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text (
                          Service,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text (
                          Decision,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                  ),
                ],
              ),

            ],
          ),
          ),
        ],
      ),
    );
  }
}
