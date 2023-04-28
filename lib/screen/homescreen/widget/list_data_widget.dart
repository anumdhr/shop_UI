 import 'package:flutter/material.dart';

var listInfo = <String, dynamic>{
    "Phones": IconButton(
      icon: const Icon(Icons.phone_android),
      onPressed: () {},
    ),
    "Headphones": IconButton(
      icon: const Icon(
        Icons.headphones,
      ),
      onPressed: () {},
    ),
    "Games": IconButton(
      icon: const Icon(
        Icons.games,
      ),
      onPressed: () {},
    ),
    "Cars": IconButton(
      icon: const Icon(
        Icons.car_crash_sharp,
      ),
      onPressed: () {},
    ),
    "Furniture": IconButton(
      icon: const Icon(
        Icons.bed,
      ),
      onPressed: () {},
    ),
    "Kids": IconButton(
      icon: const Icon(
        Icons.boy,
      ),
      onPressed: () {},
    ),
  };
  Widget listData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        listInfo.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              listInfo.values.elementAt(index),
              Text(
                listInfo.keys.elementAt(index),
              ),
            ],
          ),
        ),
      ),
    );
  }