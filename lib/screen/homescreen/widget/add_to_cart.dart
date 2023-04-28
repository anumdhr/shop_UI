import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Color(0xff181726),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quantity",
            style: TextStyle(
              color: Color(0xff808080),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 9,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(30, 20),
                  backgroundColor: const Color(0xff4E55D7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(30, 20),
                  backgroundColor: const Color(0xff4E55D7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 60,
              ),
              Container(
                height: 44,
                width: 170,
                decoration: BoxDecoration(
                  color: const Color(0xff4E55D7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 16),
                  child: Row(
                    children: [
                      const Text(
                        "#2500",
                        style: TextStyle(
                          color: Color(0xff99A0FF),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 8,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

