import 'package:flutter/material.dart';

class ListModel{
  Icon icon;
  String name;
  Widget? trailingIcon;

  ListModel({required this.icon,required this.name, this.trailingIcon});
}
List<ListModel> listModel=[
  ListModel(icon: Icon(Icons.payment), name: "Trade Store", trailingIcon: Icon(Icons.arrow_forward)),
  ListModel(icon: Icon(Icons.payment), name: "Payment Method", trailingIcon: Icon(Icons.arrow_forward)),
  ListModel(icon: Icon(Icons.payment), name: "Balance", trailingIcon: Text("\$1593")),
  ListModel(icon: Icon(Icons.payment), name: "Trade history", trailingIcon: Icon(Icons.arrow_forward)),
  ListModel(icon: Icon(Icons.restart_alt), name: "Restore Purchase", trailingIcon: Icon(Icons.arrow_forward)),
  ListModel(icon: Icon(Icons.help), name: "Help"),
  ListModel(icon: Icon(Icons.logout), name: "Log out"),
  

  
];
class ViewList{

  String image;
  String category;
  String productName;
  String price;
  ViewList({required this.image,required this.category, required this.productName, required this.price});

}
List<ViewList> viewList=[
  ViewList( image: "assets/images/Rectangle 9 (1).png", category:"Shoes", productName: "Reebok", price: "\$180,000"),
  ViewList( image: "assets/images/Rectangle 17.png", category: "Games", productName: "Play Station 5 \nConsole", price: "\$90,000"),
  ViewList(image: "assets/images/Rectangle 9.png", category: "Games", productName: "Play Station 5 \nConsole", price: "\$95,000"),
];
class SaleList{
  String image;
  String price;
  SaleList({required this.image,required this.price});

}
List<SaleList> saleList=[
  SaleList( image: "assets/images/Rectangle 17 (2).png", price: "\$13.50"),
 SaleList( image: "assets/images/Rectangle 8.png", price: "\$40.60"),
 
];