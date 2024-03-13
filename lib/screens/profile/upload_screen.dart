import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/home/search_screen.dart';
import 'package:dotted_border/dotted_border.dart';

class Upload_Screen extends StatefulWidget {
  const Upload_Screen({super.key});

  @override
  State<Upload_Screen> createState() => _Upload_ScreenState();
}

class _Upload_ScreenState extends State<Upload_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.width * .1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width * .05,
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
                    width: Get.width * .31,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: Get.width * .03,
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/prof.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .06,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .078),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expo Name :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .012),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Bharath",
                          hintStyle: TextStyle(color: Color(0xFF827D7E)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Get.width * .045,
                              vertical: Get.width * .015)),
                    ),
                    SizedBox(height: Get.width * .045),
                    Text(
                      "Company Name :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .012),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Bharath",
                          hintStyle: TextStyle(color: Color(0xFF827D7E)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Get.width * .045,
                              vertical: Get.width * .015)),
                    ),
                    SizedBox(height: Get.width * .045),
                    Text(
                      "Business Card :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .025),
                    Container(
                      width: double.infinity,
                      height: Get.width * .37,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.asset(
                        "assets/bod.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: Get.width * .02),
                    Container(
                      width: double.infinity,
                      height: Get.width * .37,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.asset(
                        "assets/bod.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: Get.width * .02),
                   DottedBorder(
                        radius: Radius.circular(5),
                        borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child: Container(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(Get.width * .019),
                              child: Image.asset(
                                "assets/plusRounded.png",
                              ),
                            ),
                          ),
                          width: double.infinity,
                          height: Get.width * .12,
                          decoration: BoxDecoration(
                              color: Color(0xFF0085FF).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    SizedBox(height: Get.width * .02),
                    Text(
                      "Hall No :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .012),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "14552",
                          hintStyle: TextStyle(color: Color(0xFF827D7E)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Get.width * .045,
                              vertical: Get.width * .015)),
                    ),
                    SizedBox(height: Get.width * .05),
                    Text(
                      "Booth No :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .012),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "25881",
                          hintStyle: TextStyle(color: Color(0xFF827D7E)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Get.width * .045,
                              vertical: Get.width * .015)),
                    ),
                    SizedBox(height: Get.width * .03),
                    Text(
                      "Booth Image :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .025),
                    Container(
                      width: double.infinity,
                      height: Get.width * .37,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/app.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: Get.width * .02),
                    Container(
                      width: double.infinity,
                      height: Get.width * .37,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/app.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: Get.width * .02),
                   DottedBorder(
                        radius: Radius.circular(5),
                        borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child: Container(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(Get.width * .019),
                              child: Image.asset(
                                "assets/plusRounded.png",
                              ),
                            ),
                          ),
                          width: double.infinity,
                          height: Get.width * .12,
                          decoration: BoxDecoration(
                              color: Color(0xFF0085FF).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    SizedBox(height: Get.width * .07),
                    Text(
                      "Product Image :",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .02),
                    product_1(),
                    SizedBox(height: Get.width * .04),
                    product_2(),
                    SizedBox(height: Get.width * .04),
                    DottedBorder(
                        radius: Radius.circular(5),
                        borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child: Container(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(Get.width * .019),
                              child: Image.asset(
                                "assets/plusRounded.png",
                              ),
                            ),
                          ),
                          width: double.infinity,
                          height: Get.width * .12,
                          decoration: BoxDecoration(
                              color: Color(0xFF0085FF).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    SizedBox(height: Get.width * .03),
                    Text(
                      "Remark",
                      style: TextStyle(
                          color: Color(0xFF827D7E), fontSize: Get.width * .043),
                    ),
                    SizedBox(height: Get.width * .012),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Get.width * .045,
                              vertical: Get.width * .015)),
                    ),
                    SizedBox(height: Get.width * .06),
                    Container(
                      width: double.infinity,
                      height: Get.width * .13,
                      decoration: BoxDecoration(
                          color: Color(0xFFE77811),
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0.02,
                                blurRadius: 5,
                                color: Color.fromARGB(255, 204, 203, 203),
                                offset: Offset(0, 5))
                          ]),
                      child: Center(
                          child: InkWell(onTap: () {
                            Get.to(() => SearchScreen());
                          },
                            child: Text(
                                                    "Update",
                                                    style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: Get.width * .05),
                                                  ),
                          )),
                    ),
                    SizedBox(height: Get.width * .2)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container product_2() {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.width * .03, horizontal: Get.width * .02),
      width: double.infinity,
      height: Get.width * .361,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 5,
                color: Color.fromARGB(255, 154, 153, 153),
                offset: Offset(0, 5))
          ],
          border: Border.all(
            color: Color(0xFF827D7E),
          ),
          color: Color(0XFFFFFFFF)),
      child: Row(
        children: [
          Column(
            children: [
              product_con(),
              SizedBox(
                height: Get.width * .015,
              ),
              Container(
                width: Get.width * .25,
                height: Get.width * .06,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF827D7E)),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("Chair",
                      style: TextStyle(
                          color: Color(0xFF827D7E),
                          fontSize: Get.width * .026)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.width * .01,
              ),
              Row(
                children: [
                  Text("CBM",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .09,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Chair",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .013,
              ),
              Row(
                children: [
                  Text("MOQ",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .082,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Chair",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .015,
              ),
              Row(
                children: [
                  Text("PRICE",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .07,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("€500.00",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .015,
              ),
              Row(
                children: [
                  Text("NOTES",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .057,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Product Image",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container product_1() {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.width * .03, horizontal: Get.width * .02),
      width: double.infinity,
      height: Get.width * .361,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 5,
                color: Color.fromARGB(255, 154, 153, 153),
                offset: Offset(0, 5))
          ],
          border: Border.all(
            color: Color(0xFF827D7E),
          ),
          color: Color(0XFFFFFFFF)),
      child: Row(
        children: [
          Column(
            children: [
              product_con(),
              SizedBox(
                height: Get.width * .015,
              ),
              Container(
                width: Get.width * .25,
                height: Get.width * .06,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF827D7E)),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("Chair",
                      style: TextStyle(
                          color: Color(0xFF827D7E),
                          fontSize: Get.width * .026)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.width * .01,
              ),
              Row(
                children: [
                  Text("CBM",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .09,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Chair",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .013,
              ),
              Row(
                children: [
                  Text("MOQ",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .082,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Chair",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .015,
              ),
              Row(
                children: [
                  Text("PRICE",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .07,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("€500.00",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.width * .015,
              ),
              Row(
                children: [
                  Text("NOTES",
                      style: TextStyle(
                        color: Color(0xFF827D7E),
                      )),
                  SizedBox(
                    width: Get.width * .057,
                  ),
                  Container(
                    height: Get.width * .06,
                    width: Get.width * .33,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF827D7E)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          Get.width * .02, Get.width * .01, Get.width * .01, 0),
                      child: Text("Product Image",
                          style: TextStyle(
                              color: Color(0xFF827D7E),
                              fontSize: Get.width * .023)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container product_con() {
    return Container(
      height: Get.width * .22,
      width: Get.width * .25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
    );
  }
}
