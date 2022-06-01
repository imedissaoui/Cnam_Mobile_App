import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/SearchWidget.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import '../Widgets/Simple.dart';
class demande extends StatelessWidget {
  const demande({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demandes'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: SingleChildScrollView(
        child : Container(
          padding: EdgeInsets.only(top: 30),
          child : Column(
            children: [
              SearchWidget(),
              SizedBox(height: 10,),
              Simple( text: 'Demande 1',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 2',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 3',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 4',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 5',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 6',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 7',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 8',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 9',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 10',
              ),
              SizedBox(height: 10,),
              Simple( text: 'Demande 11',
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),



    );
  }
}
