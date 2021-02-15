import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_market/cubit/cubit.dart';
import 'package:flutter_food_market/cubit/user_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>UserCubit()),
        BlocProvider(create: (_)=>FoodCubit()),
        BlocProvider(create: (_)=>TransactionCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
         home: SignInPage()
//      PaymentPage(
//        transaction:
//            Transaction(food: mockFoods[0], quantity: 2, user: mockUser, total: mockFoods[0].price * 2 * 1 + 50000),
//      ),
          ),
    );
  }
}
