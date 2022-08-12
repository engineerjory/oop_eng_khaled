import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/cart_class.dart';
import 'package:oop_eng_khaled/oop_practice/product_class.dart';



class NewOrderHistoryScreen extends StatelessWidget {
  static const String routeName = "NewOrderHistoryScreen";
  const NewOrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = MyCart.list_products_quantities;
    var map1 = list[0]["id"];

    print(map1);




    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as List ;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Data"),
                Text("Quantity"),
                Text("Price/Unit"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${args[0]}"),
                Text("${args[0]["product"]  }"),
                Text("Price/Unit"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
