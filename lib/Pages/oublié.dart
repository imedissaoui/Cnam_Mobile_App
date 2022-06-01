import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class MdpOublie extends StatelessWidget {
  const MdpOublie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        title: Text('Reinitialisation Mot de passe'),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
            Row(
              children: [
                Container(
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard),

                  ),
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: "e-mail ou matricule",
                  )
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
