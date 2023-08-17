import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExploreWidget extends StatelessWidget {
 final  String title;
 final String content;
 final  IconData icon;
 final  Color iconcolor;
 final  Color maincolor;
  final VoidCallback?  onTap;
  ExploreWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.iconcolor,
      required this.maincolor,
      required this.content,
      required this.onTap
      });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 0.43,
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(14),
            color: maincolor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FaIcon(icon,color: iconcolor,),
                Text(
                  title,
                  style: const TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Text(content,
                    style: TextStyle(color: Colors.black, fontSize: 13))
              ],
            ),
          ),
        ),
      ),
    );
  }
}