import 'dart:io';
import 'package:flutter/material.dart';
import 'package:inventory/Utils/colorPalatte2.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class CheckPdf extends StatefulWidget {
  const CheckPdf({super.key});

  @override
  State<CheckPdf> createState() => _CheckPdfState();
}

class _CheckPdfState extends State<CheckPdf> {
  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: file != null ?  : CircularProgressIndicator(color: ColorConstant2.darkBlue,),
      ),
    );
  }
}