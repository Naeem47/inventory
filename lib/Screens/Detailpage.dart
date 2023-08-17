import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Widgets/singlelisttile.dart';

class Detailpage extends StatelessWidget {
  const Detailpage(
      {super.key,
      required this.customername,
      required this.shopname,
      required this.phonenumber,
      required this.address});
  final String customername;

  final String shopname;

  final String phonenumber;

  final String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
         iconTheme: const IconThemeData(
           color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          " ${customername}'s Detail",
          style: GoogleFonts.mavenPro(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ),
     
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Customer Name :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black.withOpacity(0.60),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              customername,
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Shop Name :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black.withOpacity(0.60),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              shopname,
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Phone no :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black.withOpacity(0.60),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              phonenumber,
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Address :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black.withOpacity(0.60),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              address,
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
             Divider(color: Colors.black.withOpacity(0.30),height: 10,thickness: 1),
             const SizedBox(
              height: 30,
            ),
          const  SingleListtile(text: "Get statements",icon: Icons.arrow_forward_ios),
          const SizedBox(
              height: 30,
            ),
          const  SingleListtile(text: "Get More info",icon: Icons.arrow_forward_ios),
           
          ],
        ),
      ),
    );
  }
}
