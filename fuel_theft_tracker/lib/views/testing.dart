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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfRadialGauge(
              enableLoadingAnimation: true,
              // animationDuration: 5500,
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
                      widget: (Text("")),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            if (authController.ans < 0.40)
              OutlinedButton(
                onPressed: null,
                child: Text(
                  "No Theft Detected",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            else
              OutlinedButton(
                onPressed: null,
                child: Text(
                  "Theft Detected",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
