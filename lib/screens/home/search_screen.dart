import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/controller/bottombar_controller.dart';
import 'package:ofisense/screens/add/detail_screen.dart';
import 'package:ofisense/screens/home/home_screen.dart';
import 'package:ofisense/screens/home/update_screen.dart';

import 'package:ofisense/saloman.dart';
import 'package:ofisense/screens/home/search_company_screen.dart';
import 'package:ofisense/widget/bottom_bar_widget.dart';
import 'package:ofisense/widget/dummy_bottombar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final bottomBarController = Get.put(BottomBarController());
  List companyList = [
    {"name": "Apple", "img": "assets/appleB.png"},
    {"name": "Google", "img": "assets/orderP.png"},
    {"name": "Tata", "img": "assets/tata.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(),
        body: Container(
            // iphone1415pro25P1e (74:2083)

            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(
                          0.35), // Adjust the opacity of the white color filter
                      BlendMode.dstATop,
                    ),
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bg.png'))),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 55,
                    width: 170,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 117,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/dProfile.png'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 45,
                child: TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.black26,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  hintText: "Search.....",
                  hintStyle: TextStyle(
                      color: Colors.black26, fontSize: Get.width * .035),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: List.generate(3, (index) {
                  return companyListWidget(
                    index,
                  );
                }),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: DottedBorder(
                      radius: Radius.circular(2),
                      borderType: BorderType.RRect,
                      dashPattern: [4, 2], // Adjust dash pattern as needed
                      color: Colors.blue,
                      strokeWidth: 1,
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFF0085FF).withOpacity(0.2)),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Color.fromARGB(255, 215, 141, 45),
                              size: 35,
                            ),
                          ))))
            ])),
        bottomNavigationBar: DummyBottomBar());
  }

  InkWell companyListWidget(int index) {
    return InkWell(
      onTap: () {
        Get.to(() => Update_Screen());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: DottedBorder(
          dashPattern: [4, 2], // Adjust dash pattern as needed
          color: Colors.blue,
          strokeWidth: 1,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: DottedBorder(
                  borderType: BorderType.Circle,
                  padding: EdgeInsets.all(2),
                  dashPattern: [4, 2], // Adjust dash pattern as needed
                  color: Colors.blue,
                  strokeWidth: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.edit_square,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                top: -8,
                right: -8,
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color(0xFF0085FF).withOpacity(0.2)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: Get.width * 0.38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(companyList[index]["img"]))),
                    ),
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "   " + companyList[index]["name"],
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                          Text("   12345680",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600)),
                          Text("   IDRYBAGH2436",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
