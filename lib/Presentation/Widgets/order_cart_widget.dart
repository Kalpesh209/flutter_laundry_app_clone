import 'package:flutter/material.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_routes.dart';
import 'package:flutter_laundry_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_laundry_app_clone/Models/OrderModels.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

/*
Title:OrderCardWidget
Purpose:OrderCardWidget
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class OrderCardWidget extends StatelessWidget {
  final OrderModels order;

  OrderCardWidget({
    required this.order,
  });

  final DateFormat formatter = DateFormat("dd/MM/yyyy");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(context, "/single-order");
      },
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: ScreenUtil().setHeight(121.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color.fromRGBO(220, 233, 245, 1),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getOrderIconWidget(order.status),
                SizedBox(
                  width: 25.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        getOrderStatusText(order.status),
                        style: TextStyle(
                          color: Color.fromRGBO(19, 22, 33, 1),
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      textRow(
                        AppStrings.placedOn,
                        formatter.format(order.placedDate),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      textRow(
                        AppStrings.deliveryOn,
                        formatter.format(order.arrivalDate),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget textRow(String textOne, String textTwo) {
  return Wrap(
    children: [
      Text(
        "$textOne:",
        style: TextStyle(
          color: Color.fromRGBO(74, 77, 84, 0.7),
          fontSize: 14.0,
        ),
      ),
      SizedBox(
        width: 4.0,
      ),
      Text(
        textTwo,
        style: TextStyle(
          color: Color.fromRGBO(19, 22, 33, 1),
          fontSize: 14.0,
        ),
      ),
    ],
  );
}

Widget getOrderIconWidget(OrderStatus status) {
  switch (status) {
    case OrderStatus.PICKING_UP:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          Icons.local_activity,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
    case OrderStatus.DELIVERING:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 99, 2, 0.15),
        ),
        child: Icon(
          Icons.history,
          color: Color.fromRGBO(255, 99, 2, 1),
        ),
      );
    default:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          Icons.local_activity,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
  }
}

String getOrderStatusText(OrderStatus status) {
  switch (status) {
    case OrderStatus.DELIVERING:
      return AppStrings.deliveringOrder;
    case OrderStatus.PICKING_UP:
      return AppStrings.pickingUpOrder;
    default:
      return "";
  }
}
