import 'package:flutter/material.dart';
class Buildheader extends StatelessWidget {
  Buildheader({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
    child: Row(
    children: [
      CircleAvatar(radius: 30,),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
                '',
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
           SizedBox(height: 4),
            Text(
                  '',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
               ],
            ),
          Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromRGBO(30, 60, 168, 1),
            child: Icon(Icons.add_comment_outlined, color: Colors.white),
           ),
          ],
      ),
      ),
      );
  }
}
