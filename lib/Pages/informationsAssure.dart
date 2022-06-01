import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Models/user_model_prestataire.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';
import '../Widgets/app_colors.dart';
import '../Widgets/informationsBox.dart';
/*DemandeFormPage()*/
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  User?user = FirebaseAuth.instance.currentUser;
  UserPrestataireModel LoggedInPrestataire = UserPrestataireModel();

  @override
  void initState(){
    super.initState();
    FirebaseFirestore.instance
        .collection('assure')
        .doc(user!.uid)
        .get()
        .then((value) {
      this.LoggedInPrestataire=UserPrestataireModel.fromMap(value.data());
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff2c6596),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context
            );
          },
        ),
        title: Text(
          'Mes Infomations Personnelles',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body : Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 520,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //SizedBox(height: 20),
                      InformationsBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.person_sharp,
                          text: "Nom && Prénom ",
                          value: "Abdelbaki Hamza"),
                      InformationsBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.mail,
                          text: "Mail ",
                          value: "hamza.abdelbaki@ensi-uma.tn"),
                      InformationsBox(
                          obscure: false,
                          Sicon: Icons.edit,
                          Picon: Icons.password,
                          text: "Password ",
                          value: "123456789"),
                      InformationsBox(
                          obscure: true,
                          Sicon: Icons.visibility,
                          Picon: Icons.lock,
                          text: "Date de naissance ",
                          value: "11/05/1999"),
                      InformationsBox(
                          obscure: true,
                          Sicon: Icons.search,
                          Picon: Icons.medical_services,
                          text: "Service ",
                          value: "Nom de service"),

                      // button
                      FlatButton( onPressed: (){
                        Navigator.pop(context);
                      }
                       ,
                        child: Container (
                          height: 55,
                          width: double.infinity,
                          color: AppColors.Blue,
                          child: Center(
                            child: Text(
                              "Enregistrer les modifications",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            // arrire plan
            CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //image
                Container(
                  margin: EdgeInsets.only(top: 20),
                  //padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/hamza.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            //icon
            Padding(
              padding: EdgeInsets.only(bottom: 470, left: 124),
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),


    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.Blue;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
