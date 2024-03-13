import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/home/search_screen.dart';
import 'package:ofisense/screens/home/update_screen.dart';

class SearchCompanyScreen extends StatefulWidget {
  const SearchCompanyScreen({super.key});

  @override
  State<SearchCompanyScreen> createState() => _SearchCompanyScreenState();
}

class _SearchCompanyScreenState extends State<SearchCompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(children: [SizedBox(height:   25,),
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
                hintStyle:
                    TextStyle(color: Colors.black26, fontSize: Get.width * .035),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: List.generate(1, (index) {
                return InkWell(onTap: () {
                    Get.to(() => SearchScreen());
                },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                              child: InkWell(onTap: () {
                                Get.to(() => Update_Screen());
                              },
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
                        DottedBorder(
                          dashPattern: [4, 2], // Adjust dash pattern as needed
                          color: Colors.blue,
                          strokeWidth: 1,
                          child: Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFF0085FF).withOpacity(0.2)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  height: 105,
                                  width: Get.width * 0.7,
                                  decoration: BoxDecoration(
                                     
                                      borderRadius: BorderRadius.circular(3),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("assets/appleB.png"))),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Expo Name",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ])),
    );
  }
}
