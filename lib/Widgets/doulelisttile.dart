import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoubleListtile extends StatelessWidget {
  const DoubleListtile({super.key, required this.text,required this.subtext,});
  final String text;
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // border: Border.all(
          //   color: Colors.white.withOpacity(0.20)
          // ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              blurRadius: 10.0,
              spreadRadius: 1.0,
              offset: const Offset(
                -2.0,
                2.0,
              ),
            )
          ],
        ),
        child: ListTile(
          // tileColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            
          ),
          title: Text(
            text,
            
            style: GoogleFonts.roboto(
              color: Colors.black.withOpacity(0.70),
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
            subtitle: Text(
            text,
            style: GoogleFonts.roboto(
              color: Colors.black.withOpacity(0.70),
              fontWeight: FontWeight.w400,
                            fontSize: 15,

            ),
          ),
          trailing:  CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.10) ,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black.withOpacity(0.70),
            ),
          ),
        ),
      ),
    );
  }
}
