import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class CustomTextField extends StatelessWidget  {
  late final String hint;
  late final IconData icon;
  CustomTextField({Key? key,required this.hint,required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color : Colors.white,
          fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          filled: true,
          fillColor: AppColors.Blue,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      );
  }
}
