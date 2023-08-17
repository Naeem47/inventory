import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Utils/dummylists.dart';
import 'package:inventory/Widgets/TextField.dart';
import 'package:inventory/Widgets/singlelisttile.dart';

class Categorypage extends StatefulWidget {
  const Categorypage({super.key});

  @override
  State<Categorypage> createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  TextEditingController Categorynamee = TextEditingController();

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
          "  Category",
          style: GoogleFonts.mavenPro(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 2,
        // autofocus: true,
        splashColor: Colors.black,
        shape: const OvalBorder(),
        // mouseCursor:MouseCursor.defer,
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.pink,
                actions: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Add New Category",
                            style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                            ),
                          ),
                          MyTextfield(
                              controller: Categorynamee,
                              hinttext: "Category Name",
                              icon: FontAwesomeIcons.list,
                              type: TextInputType.name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    categoriesList.add({
                                      "category": Categorynamee.text,
                                    });
                                  });
                                  Future.delayed(
                                    Duration(seconds: 1),
                                    () => Navigator.pop(context),
                                  );
                                },
                                child: Text(
                                  " Add ",
                                  style: GoogleFonts.mavenPro(
                                    fontSize: 12,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: const FaIcon(
          FontAwesomeIcons.squarePlus,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleListtile(
            text: categoriesList[index]["category"],
            icon: Icons.remove,
          );
        },
      ),
    );
  }
}
