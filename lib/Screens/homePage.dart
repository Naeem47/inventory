import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// items Drawer
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shahid Jaber',
                        style: GoogleFonts.eduSaBeginner(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ],
                  )),
                  Expanded(
                      child: ListView(
                    children: const  [
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Setting',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Log out',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),

          // main screen
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 400),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                    // child: SafeArea(child: HomePage2()),
                  child: Dashboard(),
                ));
              }),

          // animate control
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },

            // onTap: () {
            //   setState(() {
            //     value == 0 ? value = 1 : value = 0;
            //   });
            // },
          ),
        ],
      ),
    );
  }
}
