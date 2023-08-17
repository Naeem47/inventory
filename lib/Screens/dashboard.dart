import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Screens/Categorypage.dart';
import 'package:inventory/Screens/addcustomerpage.dart';
import 'package:inventory/Screens/alllCustomer.dart';
import 'package:inventory/Screens/pdfpage.dart';
import 'package:inventory/Utils/colorPalatte1.dart';
import 'package:inventory/Utils/dummylists.dart';

import '../Widgets/dashboardboxes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: ColorConstant.lightBlue,
      appBar: AppBar(
      

        leading: 
       const   Padding(
           padding:  EdgeInsets.only(left: 5,top: 5,bottom: 5),
           child:      CircleAvatar(
                // maxRadius: 20,
                radius: 7,
         
                 backgroundImage: AssetImage('assets/images/profile.jpg',),
               ),
         ),
            //  
        
       
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: PopupMenuButton(itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    child: Text("Hello"),
                    value: '/hello',
                  ),
                  PopupMenuItem(
                    child: Text("About"),
                    value: '/about',
                  ),
                  PopupMenuItem(
                    child: Text("Contact"),
                    value: '/contact',
                  )
                ];
              }))
        ],
        backgroundColor: ColorConstant.forteen,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
         "${username}'s-Inventory",
          style: GoogleFonts.lato(
            fontSize: 20,
            // color: Colors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
        ),
      ),

      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExploreWidget(
                      maincolor: ColorConstant.five,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AddCustomer();
                          },
                        ));
                      },
                      iconcolor: Colors.red.shade300,
                      icon: FontAwesomeIcons.userPlus,
                      title: "Add Customer",
                      content:
                          "Add new Customer  to effortlessly expand your customers  seamlessly ."),
                  ExploreWidget(
                      maincolor: ColorConstant.ten,
                      iconcolor: Colors.blue.shade600,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AllCustomers();
                          },
                        ));
                      },
                      icon: FontAwesomeIcons.peopleGroup,
                      title: "My Customers",
                      content:
                          "Check all your customers and every single  details about them effortlessly."),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExploreWidget(
                      maincolor: ColorConstant.six,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Categorypage();
                          },
                        ));
                      },
                      iconcolor: Colors.deepPurple.shade300,
                      icon: FontAwesomeIcons.list,
                      title: " My Categoriges",
                      content:
                          "Add and manage catergories to expand the variety of products."),
                  ExploreWidget(
                      maincolor: ColorConstant.one,
                      iconcolor: Colors.white,
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return ;
                        //   },
                        // ));
                      },
                      icon: FontAwesomeIcons.boxesStacked,
                      title: "Manage Stock",
                      content:
                          "Add and manage stock to stay updated about your inventory."),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExploreWidget(
                      maincolor: ColorConstant.eleven.withOpacity(0.50),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return Categorypage();
                        //   },
                        // ));
                      },
                      iconcolor: Colors.black,
                      icon: FontAwesomeIcons.handHoldingDollar,
                      title: "Stock value",
                      content:
                          "Check out your stock value to stay updated about current situation."),
                  ExploreWidget(
                      maincolor: ColorConstant.twelve.withOpacity(0.50),
                      iconcolor: ColorConstant.eleven,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Pdfpage() ;
                          },
                        ));
                      },
                      icon: FontAwesomeIcons.receipt,
                      title: "Make Invoice",
                      content:
                          "Creating an invoice for clean processes and  clear record of services."),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExploreWidget(
                      maincolor: ColorConstant.therteen,
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return Categorypage();
                        //   },
                        // ));
                      },
                      iconcolor: ColorConstant.five,
                      icon: FontAwesomeIcons.chartLine,
                      title: "Progress",
                      content:
                          "Check the details about your bussines progress for better insight."),
                  ExploreWidget(
                      maincolor: ColorConstant.forteen.withOpacity(0.50),
                      iconcolor: Colors.black54,
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return ;
                        //   },
                        // ));
                      },
                      icon: FontAwesomeIcons.fileExport,
                      title: "All Statements",
                      content:
                          "Creating an invoice for clean processes and  clear record of services."),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
