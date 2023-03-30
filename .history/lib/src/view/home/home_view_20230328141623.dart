import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/text/custom_text.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../core/components/headerWidget/header_widget.dart';

class HomeView extends StatelessWidget with BaseSingleton {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(
              title: "Choose your\nvehicle type",
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
                      context,
                      imagePath: "hatchback",
                      title: "Hatchback",
                    ),
                  ),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topRight,
                    child: _buildVehicleType(
                      context,
                      imagePath: "sedan",
                      title: "Sedan",
                    ),
                  ),
                  Image.asset("small_ball".toPng),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topLeft,
                    child: _buildVehicleType(
                      context,
                      imagePath: "suv",
                      title: "SUV",
                    ),
                  ),
                  3.h.ph,
                  Align(
                    alignment: Alignment.topRight,
                    child: _buildVehicleType(
                      context,
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

  Widget _buildVehicleType(
    BuildContext context, {
    required String imagePath,
    required String title,
  }) {
    return GestureDetector(
      onTap: () {
        context.go("/washing-suggestion");
      },
      child: Column(
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
      ),
    );
  }
}
