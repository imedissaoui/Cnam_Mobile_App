import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Pages/Admin.dart';

import '../Widgets/app_colors.dart';





class BaseDeDonnees extends StatefulWidget{


  @override
  State<BaseDeDonnees> createState() => _BaseDeDonneesState();
}

class _BaseDeDonneesState extends State<BaseDeDonnees> {
  final userRef = FirebaseFirestore.instance.collection("assure");
  void initState(){
    getUsers();
    super.initState();

  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Assurés'),
        backgroundColor: AppColors.Blue,
        leading: IconButton(icon: Icon(Icons.arrow_back) ,onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
        reverse: true,
        child : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn (label: Text('Id',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Lato'),)),
              DataColumn (label: Text('Nom',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Lato'),),),
              DataColumn (label: Text('Prenom',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Lato'),),),
              DataColumn (label: Text('Service',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Lato',),),),
              DataColumn (label: Text('Caisse Nationale',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Lato',),),),
              DataColumn (label: Text('Lieu',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Lato',),),),
              DataColumn(label: Text('+',
              style: TextStyle(fontSize: 25),),),
            ],
            rows: [
              DataRow(cells:[
                DataCell(Text('1')),
                DataCell(Text('Nihed')),
                DataCell(Text('Mosbehi')),
                DataCell(Text('Remboursement')),
                DataCell(Text('CNSS')),
                DataCell(Text('Sousse')),
                DataCell(Icon (Icons.edit)),
              ] ),
              DataRow(cells:[
                DataCell(Text('2')),
                DataCell(Text('Imed')),
                DataCell(Text('Issaoui')),
                DataCell(Text('Achat de matériels')),
                DataCell(Text('CNSS')),
                DataCell(Text('Mednin')),
                DataCell(Icon (Icons.edit)),
              ] ),
              DataRow(cells:[
                DataCell(Text('3')),
                DataCell(Text('Hamza')),
                DataCell(Text('Abdelbaki')),
                DataCell(Text('Rembrousement sur Operation')),
                DataCell(Text('CNRPS')),
                DataCell(Text('Gabes')),
                DataCell(Icon (Icons.edit)),
              ] ),
              DataRow(cells:[
                DataCell(Text('4')),
                DataCell(Text('Mounira')),
                DataCell(Text('Khasskhoussi')),
                DataCell(Text('Service Retraite')),
                DataCell(Text('CNRPS')),
                DataCell(Text('Sidi bouzid')),
                DataCell(Icon (Icons.edit)),
              ] ),
            ],
          ),
        ),

      ),

    );
  }
  getUsers(){

  }
}
