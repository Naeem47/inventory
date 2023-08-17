import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const  ButtonWidget({super.key, required this.buttonText, required this.onTap});
  final  String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.40),
                blurRadius: 8.0,
                spreadRadius: 3.0,
                offset: const  Offset(
                  4.0,
                  4.0,
                ),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                buttonText,
                style: GoogleFonts.mavenPro(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.50),
                    fontWeight: FontWeight.w600),
              ),
               Icon(Icons.arrow_forward_ios,color: Colors.black.withOpacity(0.50),),
            ],
          ),
        ),
      ),
    );
  }
}
