import 'package:flutter/material.dart';
import 'package:oop_eng_khaled/oop_practice/product_class.dart';

class OrderHistoryScreen extends StatelessWidget {

  static const String routeName = "OrderHistoryScreen";
   OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as List<Product>;
    return   Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child: ListView.builder(
      itemCount: args.length,
        itemBuilder: (context,index){
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${args[index].name}"),

              Text("${args[index].unit}"),
              Text("${args[index].price}"),
            ],
          ),
        );
        }
  ) ,

),
    );



  }
  int? search(List<Product > list,Product myProduct){
    int? quant =-1;
    list.forEach((element) {
      //if(element.containsKey(myProduct))
    // quant =  element[Product];
    });
    return quant ;
  }

}
