import 'package:flutter/material.dart';
import 'package:pcd2/Pages/assure_profile_page.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import '../Widgets/UplodeFilesBox.dart';

class AchatRemboursementPage extends StatefulWidget {
  const AchatRemboursementPage({Key? key}) : super(key: key);

  @override
  State<AchatRemboursementPage> createState() => _AchatRemboursementPageState();
}

class _AchatRemboursementPageState extends State<AchatRemboursementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(

        backgroundColor: AppColors.LightGrey,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColors.Blue,),
          onPressed: (){
            Navigator.pop(
              context,
            );
          },
          iconSize: 45,
        ),



      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Text(

                "Rembousement sur l'achat des médicaments",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.Blue,fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              ),

            ),
            Padding(
                padding: EdgeInsets.only(top: 120),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Veuillez Scanner les fichiers ci-dissous :",
                        style: TextStyle(
                          color: AppColors.Blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: 3,
                          decoration: BoxDecoration(
                            color: AppColors.Blue
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Carte identité nationale :",
                        style: TextStyle(
                            color: AppColors.Blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),


                      UploadFilesBox(),
                      SizedBox(height: 20,),

                      UploadFilesBox(),
                      SizedBox(height: 20,),
                      UploadFilesBox(),

                      Padding(
                        padding: EdgeInsets.only(top:10),
                        child: Container(

                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.green
                          ),
                          child: FlatButton(onPressed: () {
                            Navigator.pop(
                              context
                            );
                          }, child:  Center(
                            child: Text(
                              "Deposer ma demande ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                          ),),

                        ),
                      )
                    ],
                  ),
                ),
            )

          ],
        ),
      ),
    );;
  }
}
