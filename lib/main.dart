import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory/Screens/Loginview.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black
        ),
        iconTheme: const IconThemeData(
          
          color: Colors.white,
        )
      ),
      debugShowCheckedModeBanner: false,
      home:  LogInView(),
    );
  }
}
