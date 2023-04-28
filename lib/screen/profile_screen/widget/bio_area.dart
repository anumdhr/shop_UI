import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioArea extends StatelessWidget {
  const BioArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text("Change photo"),
        const SizedBox(
          height: 17,
        ),
        Text(
          "Satriya Adhi Pradhana",
          style: GoogleFonts.montserrat(),
        ),
        const SizedBox(
          height: 47,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff4E55D7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.upload,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Upload Item",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
