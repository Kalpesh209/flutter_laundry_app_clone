enum OrderStatus { PICKING_UP, DELIVERING }

/*
Title:OrderModels
Purpose:OrderModels
Created On :27/03/2024
Edited On:27/03/2024
Author: Kalpesh Khandla
*/

class OrderModels {
  final int id;
  final OrderStatus status;
  final DateTime arrivalDate;
  final DateTime placedDate;
  final String deliveryAddress;

  OrderModels({
    required this.id,
    required this.status,
    required this.arrivalDate,
    required this.placedDate,
    required this.deliveryAddress,
  });
}
