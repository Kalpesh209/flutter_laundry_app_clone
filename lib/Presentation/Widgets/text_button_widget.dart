import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Title:TextButtonWidget
Purpose:TextButtonWidget
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

enum ButtonType { PRIMARY, PLAIN }

class TextButtonWidget extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;

  TextButtonWidget({
    required this.type,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(48.0),
        decoration: BoxDecoration(
          color: getButtonColor(type),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            this.text,
            style: GoogleFonts.roboto(
              color: getTextColor(type),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType type) {
  switch (type) {
    case ButtonType.PRIMARY:
      return AppColors.blueColor;
    case ButtonType.PLAIN:
      return Colors.white;
    default:
      return AppColors.blueColor;
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.PLAIN:
      return AppColors.blueColor;
    case ButtonType.PRIMARY:
      return Colors.white;
    default:
      return Colors.white;
  }
}
