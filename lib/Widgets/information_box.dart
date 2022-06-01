import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/Input.dart';
import 'package:pcd2/Widgets/app_colors.dart';


bool readVariable=true;

class InformationBox extends StatelessWidget {
  InformationBox({Key? key,required this.obscure,required this.Sicon,required this.Picon,required this.text,required this.value,}) : super(key: key);
  bool obscure=true;
  String text;
  String value;
  IconData Sicon;
  IconData Picon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('$text :',style: TextStyle(color: AppColors.Blue,fontSize: 15,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.all(5),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.LightGrey,
            border: Border.all(width: 3,color: AppColors.Blue)

          ),
          child: TextField(
            style: TextStyle(color: AppColors.Blue),
            obscureText: obscure,
            readOnly: readVariable,
            decoration: InputDecoration(

                hintText: value,
                hintStyle: TextStyle(color: AppColors.Blue),
                labelText: null,
                labelStyle: TextStyle(color: AppColors.Blue),
                prefixIcon: Icon(Picon,color: AppColors.Blue,),
                suffixIcon: IconButton(
                    onPressed:()=> readVariable=false, icon: Icon(Sicon,color: AppColors.Blue,)),
                border: InputBorder.none,

            ),
            //keyboardType: ,
            textInputAction: TextInputAction.done,
          )
          ,
        ),
      ],
    );
  }
}
