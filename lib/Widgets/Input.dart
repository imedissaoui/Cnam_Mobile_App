
import 'package:flutter/material.dart';
import 'package:pcd2/Widgets/app_colors.dart';
import 'package:passwordfield/passwordfield.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isObscure=true;
  final _Email = TextEditingController();
  final _Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [


            //DropDownField(),




          ],
        )
      ),
    );
  }
  void _TogglePassword(){

    if(isObscure==true){
      isObscure=false;
    }else{
      isObscure=true;
    }
    setState(() {

    });}
  Widget BuidEmail()=>TextField(
    style: TextStyle(color: AppColors.white),
    controller: _Email,

    decoration: InputDecoration(
        hintText: "Tapez votre email ",
        hintStyle: TextStyle(color: Colors.white),
        labelText: "Votre email :",
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.person_sharp,color: Colors.white,),
        suffixIcon: IconButton(
            onPressed:()=> {_Email.clear()}, icon: Icon(Icons.close,color: Colors.white,)),
        //border: OutlineInputBorder()
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 2
            )
        )
    ),
    //keyboardType: ,
    textInputAction: TextInputAction.done,
  );
  Widget BuidPassword()=> TextField(
    controller: _Password,
    style: TextStyle(color: AppColors.white),
    obscureText: isObscure,
    decoration: InputDecoration(

        hintText: "Tapez votre Mot de passe ",
        hintStyle: TextStyle(color: Colors.white),
        labelText: "Mot de passe",
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.person_sharp,color: Colors.white,),
        suffixIcon: InkWell(
            onTap: _TogglePassword,
            child: Icon(Icons.visibility ,color: AppColors.white,)),
        //border: OutlineInputBorder()
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 2
            )
        )
    ),
    //keyboardType: ,
    textInputAction: TextInputAction.done,
  );

}




/*Widget BuidCaisse()=>TextField(

  decoration: InputDecoration(
      hintText: "Tapez la Caisse",
      hintStyle: TextStyle(color: Colors.white),
      labelText: "La caisse",
      labelStyle: TextStyle(color: Colors.white),
      prefixIcon: Icon(Icons.person_sharp,color: Colors.white,),
      suffixIcon: IconButton(
          onPressed:()=> {}, icon: Icon(Icons.close,color: Colors.white,)),
      //border: OutlineInputBorder()
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white,
              width: 2
          )
      )
  ),
  //keyboardType: ,
  textInputAction: TextInputAction.done,
);*/