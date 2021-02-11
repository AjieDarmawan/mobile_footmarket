import 'package:flutter/material.dart';
import 'package:flutter_food_market/models/models.dart';
import 'package:flutter_food_market/ui/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
//      PaymentPage(
//        transaction:
//            Transaction(food: mockFoods[0], quantity: 2, user: mockUser, total: mockFoods[0].price * 2 * 1 + 50000),
//      ),
    );
  }
}
