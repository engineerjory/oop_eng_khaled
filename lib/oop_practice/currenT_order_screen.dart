import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/product_class.dart';
import 'list_item.dart';
import 'order_history_screen.dart';


class CurrentOrderScreen extends StatelessWidget {
  static const String ROUTENAME = "CurrentOrderScreen";
  CurrentOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // var provider = Provider.of<APPConfigProvider>(context).changePrice(widget.quantity, widget.price);

    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox (
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(
                    imageName: myProducts[index].imageName,
                    name: myProducts[index].name,
                    id: myProducts[index].id,
                    price: myProducts[index].price,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    // color: Colors.white,
                    height: 5,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("total = \$0.0}"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, OrderHistoryScreen.routeName,
                    arguments: myProducts,
                    );
                  },
                  child: Text("order"),
                )
              ],
            ),
          ],
        ));
  }

  List<Product> myProducts = [
    Product(
      name: "Strandmond",
      id: 1,
      price: 295.63,
      imageName: "yellow_armchair",
    ),
    Product(name: "Mellby", id: 2, price: 749.62, imageName: "red_armchair"),
    Product(name: "Micke", id: 3, price: 144.21, imageName: "blue_armchair"),

  ];

}
