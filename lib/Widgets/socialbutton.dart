import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/colorPalatte1.dart';

// ignore: must_be_immutable
class SocialButtonWidget extends StatelessWidget {
 final String img;
  final String buttonText;
  void Function()? ontap;
  SocialButtonWidget({super.key, required this.img, required this.ontap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left :40.0,right: 40),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
          //   boxShadow: [
          //    BoxShadow(
          //       color: ColorConstant.tabBarUnselectedColor,
          //       offset: Offset(4.0, 4.0),
          //       blurRadius: 15.0,
          //       spreadRadius: 1.0),
          //   BoxShadow(
          //       color: ColorConstant.tabBarUnselectedColor,
          //       offset: const Offset(-4.0, -4.0),
          //       blurRadius: 15.0,
          //       spreadRadius: 1.0),
          // ],
              borderRadius: BorderRadius.circular(8),
              color: ColorConstant.whiteColor,
              border: Border.all(color: Colors.grey.shade300),
              
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                img,
                height: 30,
                width: 40,
              ),
              Text(
                buttonText,
                style: GoogleFonts.abel(
                    fontSize: 16,
                    color: Colors.black,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}