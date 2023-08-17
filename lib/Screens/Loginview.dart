import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory/Screens/homePage.dart';
import 'package:inventory/Utils/dummylists.dart';
import 'package:inventory/Widgets/socialbutton.dart';

import '../Utils/colorPalatte1.dart';
import '../Widgets/logintextfield.dart';

class LogInView extends StatefulWidget {
  LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            height: MediaQuery.of(context).size.height * 1.00,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background2.jpg'),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Text(
                    "Hello",
                    style: GoogleFonts.dmSans(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "Login to your Account",
                    style: GoogleFonts.dmSans(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),

                  // Text Fields

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),

                  TextFieldWidget(
                    labelText: "Username",
                    iconText: const Icon(Icons.email),
                    controllerField: emailController,
                    obscureVal: false,
                    type: TextInputType.emailAddress,
                    enterValue: "Please Enter Username",
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  TextFieldWidget(
                    labelText: "Password",
                    iconText: const Icon(Icons.lock),
                    controllerField: passwordController,
                    obscureVal: true,
                    type: TextInputType.emailAddress,
                    enterValue: "Please Enter Valid Password",
                  ),

                  // Create Button

                  const SizedBox(
                    height: 24,
                  ),

                  Container(
                    width: 300,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Log In",
                          style: GoogleFonts.dmSans(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              isLoading = true;
                             username = emailController.text;

                            });
                            print(username);
                            Future.delayed(const Duration(seconds: 3), () {
                              setState(() {
                                isLoading = false;
                              });
                            });

                            if (formKey.currentState!.validate()) {
                              // ignore: unrelated_type_equality_checks
                              if (emailController.text == "admin" &&
                                  // ignore: unrelated_type_equality_checks
                                  passwordController.text == "admin") {
                                emailController.clear();
                                passwordController.clear();
                               
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              } else {
                                return showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                    title: Text("Invalid credentials"),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                );
                              }
                            } else {
                              "Invalid crendentials";
                            }
                          },
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.blue,
                                )
                              : Container(
                                  height: 80,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    gradient: LinearGradient(colors: [
                                      Colors.blue,
                                      ColorConstant.whiteColor,
                                    ]),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: ColorConstant.whiteColor,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  // Social Login

                  Center(
                    child: Text(
                      "Connect with us",
                      style: GoogleFonts.dmSans(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),

                  SocialButtonWidget(
                      img: "assets/images/facebook.png",
                      ontap: () {},
                      buttonText: "Connect on Facebook"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  SocialButtonWidget(
                      img: "assets/images/google.png",
                      ontap: () {},
                      buttonText: "Connect on Google"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
