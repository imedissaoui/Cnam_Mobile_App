import 'package:flutter/material.dart';
import 'app_colors.dart';

class MaterielBox extends StatelessWidget {
  const MaterielBox({
    Key? key,
    required this.text,
    // required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  //final String icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: AppColors.Blue,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: AppColors.LightGrey,
        ),
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*    Image.asset(
              icon,
              color: AppColors.Blue,
              width: 22,
            ),*/

            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(Icons.arrow_downward),
            SizedBox(width: 10),
            Icon(Icons.camera_alt),
          ],
        ),
      ),
    );
  }
}
