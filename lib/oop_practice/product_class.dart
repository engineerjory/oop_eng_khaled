class Product{
  String name ;
  int id ;
  double price ;
  String imageName ;
  String unit;
  String seller;

  Product(
  { required this.name,required this.id,
    required this.price, required this.imageName,
    this.unit = "pcs", this.seller="amazon"});

  @override
  String toString() {
    return "name = ${name} , price = $price , id = $id ";
  }
}