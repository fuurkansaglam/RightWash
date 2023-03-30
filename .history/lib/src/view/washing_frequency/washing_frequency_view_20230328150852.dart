import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/button/custom_button.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:sizer/sizer.dart';

class WashingFrequencyView extends StatelessWidget with BaseSingleton {
  const WashingFrequencyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                HeaderWidget(
                  title: "Indicate your car wash\nfrequency",
                ),
                IconButton(
                  onPressed: () {
                    context.go("/washing-station");
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            6.h.ph,
            CustomButton(
              onTap: () {},
              text: "",
            ),
          ],
        ),
      ),
    );
  }
}
