import 'package:oop_eng_khaled/oop_practice/product_class.dart';


 class MyCart {

 static List<Map<Product,int>> list_products_quantities = [];

   static void add (Product product , int quantity){

   list_products_quantities.add({product:quantity});
  }
  static void remove(Product myProduct){
   list_products_quantities.forEach((element) {
   // final testMap = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5};//element
    for (final mapEntry in element.entries) {
     final key = mapEntry.key;
   //  final value = mapEntry.value;
     if(key.id==myProduct.id){
      element.remove(myProduct);
     }
   //  print('Key: $key, Value: $value');  // Key: a, Value: 1 ...
    }
   });



  }
  static search (Product product){
   list_products_quantities.where((element) => false);
  }











//  static Map<Product,int> map ={};
//   static  List<Map > products = [];
//
// ////////// must create it again
//   static void add(Product product,int quantity){
//     map[product]=quantity;
//     products.add(map);
//   }
}