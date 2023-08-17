import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Utils/dummylists.dart';
import 'package:inventory/Widgets/TextField.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  TextEditingController customerName = TextEditingController();
  TextEditingController shopnameName = TextEditingController();

  TextEditingController customerPhone = TextEditingController();
  TextEditingController customerAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         iconTheme: const IconThemeData(
           color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Add Customer",
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
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MyTextfield(
              type: TextInputType.name,
              icon: Icons.person,
              controller: customerName,
              hinttext: "Customer Name ",
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Shop Name :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MyTextfield(
                type: TextInputType.name,
                icon: Icons.shop,
                controller: shopnameName,
                hinttext: "Shop Name"),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Phone no :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MyTextfield(
                type: TextInputType.number,
                icon: Icons.phone,
                controller: customerPhone,
                hinttext: "Phone no"),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Address :",
              style: GoogleFonts.mavenPro(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MyTextfield(
                type: TextInputType.streetAddress,
                icon: Icons.location_on,
                controller: customerAddress,
                hinttext: "Shop Address"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      dataList.add({
                        "name": customerName.text,
                        "phoneno": customerPhone.text,
                        "Shopname": shopnameName.text,
                        "Address": customerAddress.text,
                      });
                      
                    });
                    Future.delayed(Duration(seconds: 2),() => Navigator.pop(context),);

                  },
                  child: Text(
                    "Add Cutsomer",
                    style: GoogleFonts.mavenPro(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
