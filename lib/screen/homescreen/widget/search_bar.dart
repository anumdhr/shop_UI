
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 57),
      child: Container(
        height: 54,
        decoration: const BoxDecoration(
          color: Color(0xffF5F6F6),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search)),
          
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: "What are you looking for?",
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
