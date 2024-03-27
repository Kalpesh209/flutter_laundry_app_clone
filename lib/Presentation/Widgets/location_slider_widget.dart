import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_images.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Models/LocationModels.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:LocationSliderWidget
Purpose:LocationSliderWidget
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class LocationSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Model to represent each card

    // Make a list to represent each card
    List<LocationModels> locations = [
      LocationModels(
        address: AppStrings.kingsStreets,
        color: Color.fromRGBO(89, 69, 199, 1),
        state: AppStrings.bucharest,
        imagePath: AppImages.house1,
      ),
      LocationModels(
        address: AppStrings.victory,
        color: Color.fromRGBO(237, 116, 41, 1),
        state: AppStrings.bucharest,
        imagePath: AppImages.house2,
      ),
      LocationModels(
        address: AppStrings.victory,
        color: Color.fromRGBO(237, 116, 41, 1),
        state: AppStrings.bucharest,
        imagePath: AppImages.house2,
      ),
      LocationModels(
        address: AppStrings.kingsStreets,
        color: Color.fromRGBO(89, 69, 199, 1),
        state: AppStrings.bucharest,
        imagePath: AppImages.house1,
      ),
    ];
    return Container(
      height: ScreenUtil().setHeight(90.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: ScreenUtil().setWidth(200.0),
              decoration: BoxDecoration(
                color: locations[index].color,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: -16.0,
                    top: 0.0,
                    child: Opacity(
                      opacity: 0.69,
                      child: Image.asset(
                        locations[index].imagePath,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${locations[index].address},\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: locations[index].state,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}
