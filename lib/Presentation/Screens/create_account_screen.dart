import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_images.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_routes.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Presentation/Widgets/text_button_widget.dart';
import 'package:flutter_laundry_app_clone/Presentation/Widgets/text_form_field_widget.dart';
/*
Title:CreateAccountScreen
Purpose:CreateAccountScreen
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: 0.0,
                top: -20.0,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    AppImages.washingMachineIllustration,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              AppStrings.createAccountGet,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height,
                          constraints: BoxConstraints(
                            minHeight:
                                MediaQuery.of(context).size.height - 180.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormFieldWidget(
                                topLabel: AppStrings.fullname,
                                hintText: AppStrings.enterFullName,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextFormFieldWidget(
                                topLabel: AppStrings.email,
                                hintText: AppStrings.enterEmail,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextFormFieldWidget(
                                topLabel: AppStrings.password,
                                obscureText: true,
                                hintText: AppStrings.enterpass,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormFieldWidget(
                                topLabel: AppStrings.confPassword,
                                obscureText: true,
                                hintText: AppStrings.enterConfirmPassword,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  nextScreen(context, "/login");
                                },
                                child: Text(
                                  AppStrings.alreadyAccount,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: AppColors.blueColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextButtonWidget(
                                type: ButtonType.PRIMARY,
                                text: AppStrings.createAccount,
                                onPressed: () {
                                  // nextScreen(context, "/dashboard");
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
