import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:pdfx/pdfx.dart';
// ignore: avoid_web_libraries_in_flutter
import "dart:html" as html;

import '../../../../core/theme/app_colors.dart';

class MyPdfView extends StatefulWidget {
  const MyPdfView({super.key});

  @override
  State<MyPdfView> createState() => _MyPdfViewState();

  static void downLoadCV() {
    const url = AppConstants.cv;
    html.AnchorElement(href: "assets/Mohamed_Samir_Ibrahim_Mostafa_cv.pdf")
      ..setAttribute("download", "assets/Mohamed_Samir_Ibrahim_Mostafa_cv.pdf")
      ..click();
  }
}

class _MyPdfViewState extends State<MyPdfView> {
  final PdfController pdfController = PdfController(
    document: PdfDocument.openData(
      rootBundle
          .load('assets/Mohamed_Samir_Ibrahim_Mostafa_cv.pdf')
          .then((byteData) => byteData.buffer.asUint8List()),
    ),
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.darkBlue,
        onPressed: MyPdfView.downLoadCV,
        child: const Icon(
          Icons.download,
          color: Colors.white,
        ),
      ),
      body: PdfView(
        pageSnapping: false,
        controller: pdfController,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
