import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

class WashingStationView extends StatelessWidget with BaseSingleton {
  const WashingStationView({super.key});

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
