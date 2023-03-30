import 'package:flutter/material.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/text/custom_text.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget with BaseSingleton {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 15.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors.dodgerBlue,
                    colors.sanJuan,
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: CustomText(
                  "Choose your\nvehicle type",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
            5.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("small_ball".toPng),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: _buildVehicleType(
                      imagePath: "hatchback",
                      title: "Hatchback",
                    ),
                  ),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topRight,
                    child: _buildVehicleType(
                      imagePath: "sedan",
                      title: "Sedan",
                    ),
                  ),
                  Image.asset("small_ball".toPng),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topLeft,
                    child: _buildVehicleType(
                      imagePath: "suv",
                      title: "SUV",
                    ),
                  ),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topRight,
                    child: _buildVehicleType(
                      imagePath: "truck",
                      title: "Pick Up",
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("small_ball".toPng),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildVehicleType({
    required String imagePath,
    required String title,
  }) {
    return Column(
      children: [
        Container(
          height: 10.h,
          width: 20.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                colors.dodgerBlue,
                colors.sanJuan,
              ],
            ),
          ),
          child: Center(
            child: Image.asset(imagePath.toPng),
          ),
        ),
        .5.h.ph,
        CustomText(
          title,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
