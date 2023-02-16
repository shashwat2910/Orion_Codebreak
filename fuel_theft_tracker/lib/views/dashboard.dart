import 'package:flutter/material.dart';
import 'package:fuel_theft_tracker/controller/authentication.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48b1bf).withOpacity(0.5),
        automaticallyImplyLeading: false,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "FuelWise",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/driverinfo');
              },
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  width: MediaQuery.of(context).size.width / 1.05,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF06beb6),
                        Color(0xFF48b1bf).withOpacity(0.5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 75,
                              height: 75,
                              child: Image(
                                image:
                                    AssetImage("assets/Shashwat_Sharma.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shashwat Sharma",
                                style: GoogleFonts.poppins(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                "MH 12 RT 3537",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                width: MediaQuery.of(context).size.width / 1.05,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF06beb6),
                      Color(0xFF48b1bf).withOpacity(0.5),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            height: 75,
                            width: 75,
                            child: Image(
                              image: AssetImage("assets/david.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ronit Virwani",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, color: Colors.white),
                            ),
                            Text(
                              "MH 12 RT 3538",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                width: MediaQuery.of(context).size.width / 1.05,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF06beb6),
                      Color(0xFF48b1bf).withOpacity(0.5),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 75,
                            width: 75,
                            child: Image(
                              image: AssetImage("assets/yash.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Yash Bansal",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, color: Colors.white),
                            ),
                            Text(
                              "MH 12 RT 3539",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                width: MediaQuery.of(context).size.width / 1.05,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF06beb6),
                      Color(0xFF48b1bf).withOpacity(0.5),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 75,
                            width: 75,
                            child: Image(
                              image: AssetImage("assets/rasal.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Abhishek Rasal",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "MH 12 RT 3540",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
