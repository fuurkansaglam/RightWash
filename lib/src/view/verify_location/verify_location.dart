import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../core/components/button/custom_button.dart';
import '../../core/init/map/maps_launcher.dart';

class VerifyLocationView extends StatefulWidget {
  const VerifyLocationView({super.key});

  @override
  State<VerifyLocationView> createState() => _VerifyLocationViewState();
}

class _VerifyLocationViewState extends State<VerifyLocationView>
    with BaseSingleton {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderWidget(
                  title: "Verify your location",
                ),
                IconButton(
                  onPressed: () {
                    context.go(
                      "/washing-frequency",
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            5.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Image.asset(
                    "google_map".toJpg,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            2.h.ph,
            const Divider(thickness: 1.5),
            1.h.ph,
            CustomButton(
              onTap: () {
                MapsLauncher.launchCoordinates(38.9041, -77.0171);
              },
              text: "Verify Location",
            ),
          ],
        ),
      ),
    );
  }
}
