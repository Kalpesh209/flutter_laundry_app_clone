import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_images.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_routes.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Presentation/Widgets/text_button_widget.dart';

/*
Title:HomePageScreen
Purpose:HomePageScreen
Created On:27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 100.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.clothFaded),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImages.illustration,
                    scale: 1.1,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      AppStrings.welcomeTo,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(19, 22, 33, 1),
                          ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      AppStrings.thisIs,
                      style: TextStyle(
                        color: Color.fromRGBO(74, 77, 84, 1),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextButtonWidget(
                      text: AppStrings.login,
                      type: ButtonType.PLAIN,
                      onPressed: () {
                        nextScreen(context, "/login");
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextButtonWidget(
                      text: AppStrings.createAccount,
                      type: ButtonType.PRIMARY,
                      onPressed: () {
                        nextScreen(context, "/createAccount");
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
