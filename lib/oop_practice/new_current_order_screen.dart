import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/cart_class.dart';
import 'package:oop_eng_khaled/oop_practice/new_order_history_screen.dart';
import 'package:oop_eng_khaled/oop_practice/product_class.dart';

class NewCurrentOrderScreen extends StatefulWidget {
  static const String routeName = "NewCurrentOrderScreen";
  NewCurrentOrderScreen({Key? key}) : super(key: key);

  @override
  State<NewCurrentOrderScreen> createState() => _NewCurrentOrderScreenState();
}

class _NewCurrentOrderScreenState extends State<NewCurrentOrderScreen> {
  double totalCost = 0;

  int item1Quantity = 0;

  int item2Quantity = 0;

  int item3Quantity = 0;

  List<Product> myProducts = [
    Product(name: "Strandmond",id: 1,price: 10,imageName: "yellow_armchair",),
    Product(name: "Mellby", id: 2, price: 20, imageName: "red_armchair"),
    Product(name: "Micke", id: 3, price: 30, imageName: "blue_armchair"),
  ];

  @override
  Widget build(BuildContext context) {
    if(MyCart.list_products_quantities.isEmpty){
      MyCart.add(myProducts[0], item1Quantity);
      MyCart.add(myProducts[1], item2Quantity);
      MyCart.add(myProducts[2], item3Quantity);
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 10)
                    ]),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Row(
                  children: [
                    Image(
                      width: 50,
                      height: 50,
                      image: AssetImage(
                          "assets/images/${myProducts[0].imageName}.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${myProducts[0].name}"),
                          Text("\$${myProducts[0].price}"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            item1Quantity--;
                            if (item1Quantity <= 0) item1Quantity = 0;
                            totalCost = calculateTotalCost();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("${item1Quantity}")),
                        IconButton(
                          onPressed: () {
                            item1Quantity++;
                            totalCost = calculateTotalCost();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 10)
                    ]),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Row(
                  children: [
                    Image(
                      width: 50,
                      height: 50,
                      image: AssetImage(
                          "assets/images/${myProducts[1].imageName}.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${myProducts[1].name}"),
                          Text("\$${myProducts[1].price}"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            item2Quantity--;
                            if (item2Quantity <= 0) item2Quantity = 0;
                            totalCost = calculateTotalCost();

                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("${item2Quantity}")),
                        IconButton(
                          onPressed: () {
                            item2Quantity++;
                            totalCost = calculateTotalCost();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 10)
                    ]),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Row(
                  children: [
                    Image(
                      width: 50,
                      height: 50,
                      image: AssetImage(
                          "assets/images/${myProducts[2].imageName}.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${myProducts[2].name}"),
                          Text("\$${myProducts[2].price}"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            item3Quantity--;
                            if (item3Quantity <= 0) item3Quantity = 0;
                            totalCost = calculateTotalCost();

                            setState(() {});
                          },
                          icon: Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("${item3Quantity}")),
                        IconButton(
                          onPressed: () {
                            item3Quantity++;
                            totalCost = calculateTotalCost();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("total = \$${totalCost.toStringAsFixed(2)}"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  primary: Colors.red,
                ),
                onPressed: () {
                   Navigator.pushNamed(context, NewOrderHistoryScreen.routeName,
                     arguments: MyCart.list_products_quantities,
                   );
                },
                child: Text("order"),
              )
            ],
          ),
        ],
      ),
    );
  }

  double calculateTotalCost() {
    totalCost = myProducts[0].price * item1Quantity;
    totalCost += myProducts[1].price * item2Quantity;
    totalCost += myProducts[2].price * item3Quantity;
    print(MyCart.list_products_quantities);
    return totalCost;
  }
}
