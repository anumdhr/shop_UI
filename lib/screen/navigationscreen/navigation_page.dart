import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_design/screen/product_screen/product_page.dart';

import 'package:ui_design/screen/profile_screen/profile_page.dart';
import 'package:ui_design/screen/homescreen/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  List page = [
    HomePage(),
    Container(
      child: Center(
        child: Text("Message"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Favourite"),
      ),
    ),
    ProductPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.brown,
          backgroundColor: Colors.deepPurpleAccent,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
                label: 'Home',
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                    setState(
                      () {
                        index = 1;
                      },
                    );
                  },
                ),
                label: 'Message',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  icon: Icon(Icons.favorite),
                ),
                label: "Favourite",
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  icon: Icon(Icons.shopping_cart),
                ),
                label: "Cart",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => setState(() {
                    index = 4;
                  }),
                  icon: Icon(Icons.menu),
                ),
                label: "Menu",
                backgroundColor: Colors.lightGreenAccent),
          ]),
      body: page[index],
    );
  }
}
