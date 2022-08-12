import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/product_class.dart';

import 'cart_class.dart';

class ListItem extends StatefulWidget {
  int quantity = 0;

  String name;
  int id;
  double price;
  String imageName;

  ListItem({
    Key? key,
    required this.id,
    required this.imageName,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  // int quantity = 0;
  double total = 0 ;

  @override
  Widget build(BuildContext context) {
    //
    // MyCart.add(
    //   Product(
    //       name: widget.name,
    //       id: widget.id,
    //       price: widget.price,
    //       imageName: widget.imageName),
    //     widget.quantity,
    // );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)]),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        children: [
          Image(
            width: 50,
            height: 50,
            image: AssetImage("assets/images/${widget.imageName}.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${widget.name}"),
                Text("\$${widget.price}"),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  widget.quantity--;
                  if (widget.quantity <= 0)
                    widget.quantity=0;

                  setState(() {
                 total =   calculateTotal();
                  });
                },
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.grey,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("${widget.quantity}")),
              IconButton(
                onPressed: () {
                  widget.quantity++;
                  setState(() {
                    total =   calculateTotal();
                  });
                },
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  double calculateTotal (){
    return widget.quantity*widget.price ;
  }
}
