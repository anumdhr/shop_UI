import 'package:flutter/material.dart';
import 'package:ui_design/model/model.dart';

class LatestSection extends StatelessWidget {
  const LatestSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Latest",
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
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 149,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 149,
                width: 114,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  image: DecorationImage(
                    image: AssetImage(viewList[index].image),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffC4C4C4),
                            borderRadius: BorderRadius.circular(5)),
                        height: 8,
                        width: 22,
                        child: Text(
                          viewList[index].category,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 6),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        child: Text(
                          viewList[index].productName,
                          style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 9,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              viewList[index].price,
                              style: const TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Color(0xffE5E9EF),
                              radius: 9,
                              child: Icon(
                                Icons.add,
                                color: Color(0xff545589),
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
              //  Stack(
              //   children: [
        
              //
              //      Text(viewList[index].price),
              //      Text(viewList[index].productName),
              //      Text(viewList[index].category),
              //    IconButton(onPressed: () {
        
              //    }, icon: viewList[index].icon),
        
              //   ],
              // );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 70,
              );
            },
            itemCount: viewList.length),
      ),
    ),
      ],
    );
  }
}
