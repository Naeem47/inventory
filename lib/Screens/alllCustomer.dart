import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Screens/Detailpage.dart';
import 'package:inventory/Screens/addcustomerpage.dart';
import 'package:inventory/Widgets/doulelisttile.dart';

import '../Utils/dummylists.dart';

class AllCustomers extends StatefulWidget {
  const AllCustomers({super.key});

  @override
  State<AllCustomers> createState() => _AllCustomersState();
}






class _AllCustomersState extends State<AllCustomers> {
  
  
 final TextEditingController name = TextEditingController();
 
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
        elevation: 0,
        title: Text(
          "All Customers",
          style: GoogleFonts.lato(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  
                  return AddCustomer();
                },));
              },
              child: FaIcon(FontAwesomeIcons.userPlus,color: Colors.black,)),
          )
        ],
        // bottom: TabBar(tabs: []),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
             onTap:(){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return Detailpage(
                                        address: dataList[index]["Address"],
                                        customername:dataList[index]["name"] ,
                                        phonenumber:dataList[index]["phoneno"] ,
                                        shopname:dataList[index]["Shopname"] ,
                                      );
                                    },));
                                  },

                                  child: DoubleListtile(text: dataList[index]["name"]  , subtext: dataList[index]["Shopname"] ),

         
          
          );
        },
      ),
     
    );
  }
}
