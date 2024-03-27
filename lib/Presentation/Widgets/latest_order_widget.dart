import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Models/OrderModels.dart';
import 'package:flutter_laundry_app_clone/Presentation/Widgets/order_cart_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
Title:LatestOrdersWidget
Purpose:LatestOrdersWidget
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class LatestOrdersWidget extends StatelessWidget {
  final List<OrderModels> orders = [
    OrderModels(
      id: 507,
      deliveryAddress: AppStrings.newTimesSquare,
      arrivalDate: DateTime(2020, 1, 23),
      placedDate: DateTime(2020, 1, 17),
      status: OrderStatus.DELIVERING,
    ),
    OrderModels(
      id: 536,
      deliveryAddress: AppStrings.victoriaSquare,
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 19),
      status: OrderStatus.PICKING_UP,
    ),
    OrderModels(
      id: 507,
      deliveryAddress: AppStrings.newTimesSquare,
      arrivalDate: DateTime(2020, 1, 23),
      placedDate: DateTime(2020, 1, 17),
      status: OrderStatus.PICKING_UP,
    ),
    OrderModels(
      id: 507,
      deliveryAddress: AppStrings.newTimesSquare,
      arrivalDate: DateTime(2020, 1, 23),
      placedDate: DateTime(2020, 1, 17),
      status: OrderStatus.DELIVERING,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                AppStrings.latestOrder,
                style: TextStyle(
                  color: Color.fromRGBO(19, 22, 33, 1),
                  fontSize: 18.0,
                ),
              ),
              Text(
                AppStrings.viewAll,
                style: TextStyle(
                  color: AppColors.blueColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: OrderCardWidget(
                order: orders[index],
              ),
            );
          },
        )
      ],
    );
  }
}
