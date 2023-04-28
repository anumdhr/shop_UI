import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_design/model/model.dart';
import 'package:ui_design/screen/homescreen/widget/flash_sale_section.dart';
import 'package:ui_design/screen/homescreen/widget/latest_section.dart';
import 'package:ui_design/screen/homescreen/widget/list_data_widget.dart';
import 'package:ui_design/screen/homescreen/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100, top: 5),
          child: RichText(
            text: const TextSpan(
                text: "Trade by",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " bata",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ]),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                ),
                Row(
                  children: const [
                    Text("Location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        )),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 10,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const SearchBar(),
              const SizedBox(
                height: 20,
              ),
              listData(),
              const SizedBox(
                height: 29,
              ),
              const LatestSection(),

              const SizedBox(
                height: 17,
              ),

              const FlashSaleSection(),
              // listValues(),
            ],
          ),
        ),
      ),
    );
  }

  // var listSale = <String, dynamic>{
  //   "\$32.90": "assets/images/Rectangle 17 (2).png",
  //   "\$54.90": "assets/images/Rectangle 8.png",
  // };
  // Widget listValues() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: List.generate(
  //       listInfo.length,
  //       (index) => Row(
  //         children: [
  //           Text(
  //             listSale.values.elementAt(index),
  //           ),
  //           Text(
  //             listSale.keys.elementAt(index),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
