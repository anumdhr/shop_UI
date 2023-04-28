import 'package:flutter/material.dart';

class SneakerDetails extends StatelessWidget {
  const SneakerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
               Text(
                "New Balance \nSneakeres",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
              Text(
                "\$22.50",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
      height: 22,
    ),
    const Padding(
      padding: EdgeInsets.only(left: 24, bottom: 10),
      child: Text(
        "Features waterprooof,fire sir resistant shoes.all \nchanged when the country of fire attack",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: 9,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const Icon(Icons.star_border_outlined),
          const Text(
            '3.9',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 9,
            ),
          ),
          const Text(
            "(4000 reviews)",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 9,
            ),
          ),
        ],
      ),
    ),
    const SizedBox(
      height: 12,
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        "Color:",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
          fontSize: 9,
        ),
      ),
    ),
    const SizedBox(
      height: 11,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            height: 26,
            width: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                color: const Color(0xffADADAD),
                width: 2,
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Container(
            height: 26,
            width: 34,
            decoration: BoxDecoration(
              color: const Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Container(
            height: 26,
            width: 34,
            decoration: BoxDecoration(
              color: const Color(0xff181726),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ],
      ),
    ),
    const SizedBox(
      width: 20,
    ),
      ],
    );
  }
}
