import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Presentation/Screens/create_account_screen.dart';
import 'package:flutter_laundry_app_clone/Presentation/Screens/dashboard_screen.dart';
import 'package:flutter_laundry_app_clone/Presentation/Screens/home_page_screen.dart';
import 'package:flutter_laundry_app_clone/Presentation/Screens/login_screen.dart';
import 'package:flutter_laundry_app_clone/Presentation/Screens/single_order_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Title:Entry Point of App
Purpose:Entry Point of App
Created On :09/10/2023
Edited On:09/10/2023
Author: Kalpesh Khandla
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
        );
      },
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePageScreen();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return LoginScreen();
      });
    case "/createAccount":
      return MaterialPageRoute(builder: (BuildContext context) {
        return CreateAccountScreen();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return DashBoardScreen();
      });
    case "/single-order":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SingleOrderScreen();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePageScreen();
      });
  }
}
