import 'package:flutter/material.dart';
import 'package:fuel_theft_tracker/controller/authentication.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Testing extends StatefulWidget {
  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  final authController = Get.put(FirebaseAuthentication());
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await authController.fetchDoc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF48b1bf).withOpacity(0.5),
        title: Text(
          "FuelWise",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => SfRadialGauge(
                enableLoadingAnimation: true,
                animationDuration: 5500,
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 1,
                    ranges: <GaugeRange>[
                      GaugeRange(
                          startValue: 0,
                          endValue: 0.3,
                          color: Colors.green,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 0.3,
                          endValue: 0.7,
                          color: Colors.orange,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 0.7,
                          endValue: 1,
                          color: Colors.red,
                          startWidth: 10,
                          endWidth: 10)
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: authController.ans.value,
                      )
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        angle: 90,
                        positionFactor: 0.5,
                        widget: (Obx(
                          () => authController.ans < 0.4
                              ? Flexible(
                                  child: Text(
                                    "No Fuel Theft\n Detected",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              : Flexible(
                                  child: Text(
                                    "Fuel Theft\n Detected",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
