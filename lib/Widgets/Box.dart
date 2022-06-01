import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class BoxCard extends StatefulWidget {
  final String name;
  const BoxCard({Key? key,required this.name}) : super(key: key);

  @override
  State<BoxCard> createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),

      height: 50,
      child: Container(
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              child: Icon(Icons.account_box_sharp,
                size: 45,

              ),
              decoration: BoxDecoration(
                //color: AppColors.red
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Prestataire",
              style: TextStyle(
                  fontSize: 25
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: AppColors.LightGrey,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
