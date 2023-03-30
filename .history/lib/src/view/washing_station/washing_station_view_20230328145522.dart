import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/button/custom_button.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

class WashingStationView extends StatefulWidget {
  const WashingStationView({super.key});

  @override
  State<WashingStationView> createState() => _WashingStationViewState();
}

class _WashingStationViewState extends State<WashingStationView>
    with BaseSingleton {
  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderWidget(
                  title: "Find your nearest\nwashing station",
                ),
                IconButton(
                  onPressed: () {
                    context.go("/washing-suggestion");
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
            5.h.ph,
            const Divider(thickness: 1.5),
            2.h.ph,
            CustomButton(
              onTap: () {},
              text: "Open Google Maps",
            ),
          ],
        ),
      ),
    );
  }
}
