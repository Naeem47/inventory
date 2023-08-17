import 'package:flutter/material.dart';
import 'package:inventory/Utils/colorPalatte1.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield(
      {super.key, required this.controller, required this.hinttext,required this.icon,required this.type});
  final String hinttext;
  final IconData icon;
  final TextInputType type;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.black87,
       ),
      controller: controller,
      cursorColor: Colors.white,
      keyboardType: type,
      decoration: InputDecoration(
        
        prefixIcon: Icon(icon,color: Colors.black87,fill: 0.10) ,
        
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Colors.black87,
        ),
        focusedBorder:
             UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.five)),
      ),
    );
  }
}
