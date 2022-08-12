import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/currenT_order_screen.dart';
import 'package:oop_eng_khaled/oop_practice/new_current_order_screen.dart';
import 'package:oop_eng_khaled/oop_practice/new_order_history_screen.dart';

import 'oop_practice/cart_screen.dart';
import 'oop_practice/order_history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {

        CartScreen.routeName:(context)=>CartScreen(),
        OrderHistoryScreen.routeName:(context)=>OrderHistoryScreen(),
        NewCurrentOrderScreen.routeName:(context)=>NewCurrentOrderScreen(),
        NewOrderHistoryScreen.routeName:(context)=>NewOrderHistoryScreen(),
      //  CurrentOrderScreen.ROUTENAME:(context)=>CurrentOrderScreen(),
      },
      initialRoute: CartScreen.routeName,
    );
  }
}
