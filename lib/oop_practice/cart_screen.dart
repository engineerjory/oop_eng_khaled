import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/new_current_order_screen.dart';

import 'currenT_order_screen.dart';
import 'order_history_screen.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "CartScreen";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,color: Colors.grey,),
          ),
          title:const Center(
            child: Text("Cart",
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_sharp,color: Colors.grey,),
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
           labelPadding: EdgeInsets.all(10),
           indicatorWeight: 1.5,
           indicatorSize: TabBarIndicatorSize.label,
           // padding: EdgeInsets.only(bottom: 12),
           // indicatorPadding: EdgeInsets.all( 10),
            tabs: [
                Text("Current Order"),
              Text("Order History"),

          ],),
        ),
        body: TabBarView(
          children: [
            NewCurrentOrderScreen(),
            OrderHistoryScreen(),
          ],

        ),
      ),
    );
  }
}
