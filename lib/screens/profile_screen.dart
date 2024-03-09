import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List detailsVal = [
    {"name": "Home", "icon": Icons.home},
    {"name": "Edit Profile", "icon": Icons.edit_square},
    {"name": "Home", "Add Expo Name": Icons.add_circle_sharp},
    {"name": "Home", "Log Out": Icons.logout_outlined}
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 123, 121, 122)),
              ),
            ),
            SizedBox(
              width: 90,
            ),
            Container(
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.fill,
              ),
              height: 55,
              width: 165,
            ),
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 123, 121, 122),
                      blurRadius: 12,
                      spreadRadius: 2)
                ]),
            child: Stack(clipBehavior: Clip.none,
              children: [Positioned(top: -37,left: Get.width*0.39,right: Get.width*0.39,
              child: CircleAvatar(
                  radius: Get.width*0.11,
                  backgroundImage: AssetImage('assets/dProfile.png'),
                )),
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text("Bharathraj.R",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 81, 79, 79))),
                    Text("demo@gmail.com",
                        style: TextStyle(
                            fontSize: 15, color: Color.fromARGB(255, 81, 79, 79))),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 25, 0, 15),
                          child: Column(
                            children: List.generate(
                                4,
                                (index) => Column(
                                      children: [
                                        Row(
                                          children: [
                                            (index == 0)
                                                ? Icon(
                                                    Icons.home_rounded,
                                                    size: 20,
                                                  )
                                                : (index == 1)
                                                    ? Icon(
                                                        Icons.edit_square,
                                                        size: 20,
                                                      )
                                                    : (index == 2)
                                                        ? Icon(
                                                            Icons.add_circle_sharp,
                                                            size: 20,
                                                          )
                                                        : Icon(
                                                            Icons.logout_outlined,
                                                            size: 20,
                                                          ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            (index == 0)
                                                ? Text(
                                                    "Home",
                                                    style: TextStyle(
                                                        fontSize: 21,
                                                        color: Color.fromARGB(
                                                            255, 103, 101, 101),
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                : (index == 1)
                                                    ? Text(
                                                        "Edit Profile",
                                                        style: TextStyle(
                                                            fontSize: 21,
                                                            color: Color.fromARGB(
                                                                255, 103, 101, 101),
                                                            fontWeight:
                                                                FontWeight.w500),
                                                      )
                                                    : (index == 2)
                                                        ? Text(
                                                            "Add Expo Name",
                                                            style: TextStyle(
                                                                fontSize: 21,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        103,
                                                                        101,
                                                                        101),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )
                                                        : Text(
                                                            "Log Out",
                                                            style: TextStyle(
                                                                fontSize: 21,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        103,
                                                                        101,
                                                                        101),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        )
                                      ],
                                    )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
