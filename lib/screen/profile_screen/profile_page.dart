import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/model/model.dart';
import 'package:ui_design/screen/homescreen/home_page.dart';
import 'package:ui_design/screen/profile_screen/widget/bio_area.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.3,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 19,
            ),
            BioArea(),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: listModel[index].icon,
                    trailing: listModel[index].trailingIcon,
                    title: Text(
                      listModel[index].name,
                    ),
                  );
                },
                itemCount: listModel.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

