import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcd2/Pages/BaseDeDonnees.dart';
import 'package:pcd2/Pages/Home.dart';
import 'package:pcd2/Pages/Tables.dart';
import 'package:pcd2/Pages/choisir.dart';
import 'package:pcd2/Pages/choisirmodif.dart';
import 'package:pcd2/Pages/signupAssur%C3%A9.dart';
import 'package:pcd2/Widgets/NewSimple.dart';
import '../Widgets/appcolors.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: AppColors.LightGrey,

      appBar: AppBar(
        title: const Text('AdminPanel'),
        backgroundColor: AppColors.Blue,
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: IconButton(
              icon:Icon(
                Icons.logout,size: 35,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home())
              );
                Fluttertoast.showToast(msg: "Loggout Successfully");
                
                },),)
        ],
      ),

      sideBar: SideBar(
        backgroundColor: AppColors.white,
        items: const [
          MenuItem (
            title: 'Gestion des demandes',
            route: '/',
            icon: Icons.dashboard,
          ),
          MenuItem(
            title: 'Utilisateurs',
            icon: Icons.web_outlined,
            children: [
              MenuItem(
                title: 'Assurés Inscrits',
                route: '',
                icon: Icons.accessible,
              ),
              MenuItem(
                title: 'Prestataires conventionnés',
                route: '',
                  icon: Icons.wheelchair_pickup
              ),
            ],
          ),
          MenuItem(
            title: 'Produits Assurés',
            icon: Icons.web_outlined,
            children: [
              MenuItem(
                title: 'Operations',
                route: '',
                icon : Icons.add_moderator
              ),
              MenuItem(
                title: 'Medicaments',
                route: '',
                icon : Icons.add_box
              ),
              MenuItem(
                title: 'Appareils et protheses',
                route: '',
                icon : Icons.agriculture_rounded
              ),
            ],
          ),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 90,
          width: double.infinity,
          color: AppColors.LightGrey,
          child: Row (
            children : [
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child : IconButton(onPressed: null, icon: Icon(Icons.account_circle_outlined))
              ),
              SizedBox(width: 10,),
              Text(
              'Welcome Admin ',
              textAlign : TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ]),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              '',
              textAlign : TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child : Column(
          children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          //margin: EdgeInsets.only(left: 10,top: 10),
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.only(bottomLeft: const Radius.circular(50.0)),
              color: AppColors.LightGrey),
          child :  Center( child: Image(
            image: AssetImage('assets/cnam.png'),
            height: 150,
          ),
          ),
        ),
       Container (
         //padding: EdgeInsets.symmetric(horizontal: 10),
         child : Column(
           children : [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children : [
                 FlatButton(onPressed: (){
                 }, child:NewSimple(text: 'e-mails',icon: Icon(Icons.email,color: AppColors.white,),),
                 ),
                 SizedBox(width: 40,),
                 FlatButton(onPressed: (){}, child:NewSimple(text: 'Notifications',icon: Icon(Icons.notification_important,color: AppColors.white,),),
                 ),

               ],
             ),
             SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children : [
                 FlatButton(onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  Choisir()),
                   );
                 }, child:NewSimple(text: 'Ajout utilisateur ',icon: Icon(Icons.add_box,color: AppColors.white,),),
                 ),
                 SizedBox(width: 40,),
                 FlatButton(onPressed: (){}, child: NewSimple(text: 'Suppression utilisateur',icon: Icon(Icons.remove_circle,color: AppColors.white,),),
                 ),

               ],
             ),
             SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children : [
                 FlatButton(onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  ChoisirModif()),
                   );
                 }, child:NewSimple(text: 'Modifier utilisateur',icon: Icon(Icons.update,color: AppColors.white,),),
                 ),
                 SizedBox(width: 40,),
                 FlatButton(onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Tables()),
                   );

                 }, child: NewSimple(text: 'Consulter base de données',icon: Icon(Icons.account_tree_outlined,color: AppColors.white,),),
                 ),

               ],
             ),
           ],

         ),
       ),
          ],

        ),

    ),
    );
  }
}