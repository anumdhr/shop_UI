import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_design/screen/product_screen/widget/highlight_image.dart';
import 'package:ui_design/screen/product_screen/widget/sneaker_details.dart';

import '../homescreen/widget/add_to_cart.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HighlightImage(),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Rectangle 30.png", fit: BoxFit.fill),
                Image.asset("assets/images/Rectangle 29.png", fit: BoxFit.fill),
                Image.asset("assets/images/Rectangle 31.png", fit: BoxFit.fill),
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            SneakerDetails(),
            
            AddToCart(),
          ],
        ),
      ),
    );
  }
}

