import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: AppColors.LightGrey),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Cherchez votre demande',
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(Icons.search, color: AppColors.Blue),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColors.Blue.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColors.Blue.withOpacity(0.7)),
        ),
      ),
    );
  }
}
