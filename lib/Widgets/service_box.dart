import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';

class ServiceBox extends StatelessWidget {
  String Name;
  String icon;
  ServiceBox({Key? key,required this.icon,required this.Name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 170,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(width: 3,color: AppColors.LightGrey,
        ),
        borderRadius: BorderRadius.circular(15),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.LightGrey
            ),
            child: Center(
              child: IconButton(icon: Image.asset(icon,color: AppColors.Blue,),onPressed: null ,),
            ),

          ),

          SizedBox(height: 10,),
          Container(
            child: Text(

              Name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),


    );
  }
}
