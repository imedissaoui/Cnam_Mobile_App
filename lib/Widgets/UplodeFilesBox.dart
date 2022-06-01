import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class UploadFilesBox extends StatelessWidget {
  const UploadFilesBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(

          border: Border.all(width: 3,color: AppColors.Blue
          )

      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              "Scannez votre CIN SVP :",
              style: TextStyle(
                color: AppColors.Blue,
                fontSize: 17,

              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: AppColors.Blue,size: 30,))
          ],
        ),
      ),
    );
  }
}
