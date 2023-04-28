
import 'package:flutter/material.dart';

class HighlightImage extends StatelessWidget {
  const HighlightImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 328,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/Rectangle 8.png',
                  fit: BoxFit.fill),
              Positioned(
                bottom: 28,
                right: -21,
                child: Container(
                  height: 95,
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffE5E9EF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.favorite_outline),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      const Icon(Icons.share),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
