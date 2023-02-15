import 'package:flutter/material.dart';
import 'package:fuel_theft_tracker/controller/authentication.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
        automaticallyImplyLeading: false,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Fuel Tracking System",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                        stops: [0.1, 0.9],
                        colors: [
                          Colors.blue.shade100,
                          Colors.indigo.shade200,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: Image(
                            image: AssetImage("assets/driver.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shashwat Sharma",
                              style: GoogleFonts.mcLaren(
                                fontSize: 20,
                              ),
                            ),
                            Text("MH 12 RT 3537")
                          ],
                        )
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
                      stops: [0.1, 0.9],
                      colors: [
                        Colors.blue.shade100,
                        Colors.indigo.shade200,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: Image(
                          image: AssetImage("assets/driver.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ronit Virwani",
                            style: GoogleFonts.mcLaren(
                              fontSize: 20,
                            ),
                          ),
                          Text("MH 12 RT 3538")
                        ],
                      )
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
                      stops: [0.1, 0.9],
                      colors: [
                        Colors.blue.shade100,
                        Colors.indigo.shade200,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: Image(
                          image: AssetImage("assets/driver.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Yash Bansal",
                            style: GoogleFonts.mcLaren(
                              fontSize: 20,
                            ),
                          ),
                          Text("MH 12 RT 3539")
                        ],
                      )
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
                      stops: [0.1, 0.9],
                      colors: [
                        Colors.blue.shade100,
                        Colors.indigo.shade200,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: Image(
                          image: AssetImage("assets/driver.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Abhishek Rasal",
                            style: GoogleFonts.mcLaren(
                              fontSize: 20,
                            ),
                          ),
                          Text("MH 12 RT 3540")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
