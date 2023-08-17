import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/colorPalatte1.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {super.key,
      required this.labelText,
      required this.iconText,
      required this.controllerField,
      required this.obscureVal,
      required this.type,
      required this.enterValue});
  String labelText;
  Icon iconText;
  TextEditingController controllerField;
  bool obscureVal;
  TextInputType type;
  String enterValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: ColorConstant.whiteColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
             BoxShadow(
                color: ColorConstant.tabBarUnselectedColor,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: ColorConstant.whiteColor,
                offset: const Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ]),
      child: TextFormField(
        validator: (val) {
          if (val!.isEmpty) {
            return enterValue;
          } else {
            return null;
          }
        },
        controller: controllerField,
        keyboardType: type,
        obscureText: obscureVal,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 10),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            label: Text(
              labelText,
              style:
                  GoogleFonts.lato(color: ColorConstant.tabBarUnselectedColor),
            ),
            prefixIcon: iconText),
      ),
    );
  }
}