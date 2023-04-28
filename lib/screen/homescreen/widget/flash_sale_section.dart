import 'package:flutter/material.dart';
import 'package:ui_design/model/model.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Flash Sale",
                style: TextStyle(
                  color: Color(0xff040402),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
              height: 221,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 221,
                      width: 174,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(saleList[index].image),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                      "assets/images/Ellipse 27.png"),
                                ),
                                Container(
                                  height: 18,
                                  width: 47,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.red,
                                  ),
                                  child: const Text(
                                    "30% Off",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 17,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffC4C4C4),
                                  ),
                                  child: const Text(
                                    "Kids",
                                    style: TextStyle(
                                      color: Color(0xff070604),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 9,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("New Balance \nSneaker",
                                style:TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    ), 
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      saleList[index].price,
                                       style:TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12,
                                    ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Color(0xffEEEFF4),
                                            radius: 15,
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 15,
                                              color: Color(0xff545589),
                                              weight: 2,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          const CircleAvatar(
                                            backgroundColor: Color(0xffEEEFF4),
                                            radius: 20,
                                            child: Icon(
                                              Icons.add,
                                              size: 20,
                                              color: Color(0xff545589),
                                              weight: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: saleList.length)),
        ),
      ],
    );
  }
}
