import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/button/custom_button.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/components/text/custom_text.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:sizer/sizer.dart';

class WashingFrequencyView extends StatefulWidget {
  const WashingFrequencyView({super.key});

  @override
  State<WashingFrequencyView> createState() => _WashingFrequencyViewState();
}

class _WashingFrequencyViewState extends State<WashingFrequencyView>
    with BaseSingleton {
  bool isNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderWidget(
                  title: "Indicate your car wash\nfrequency",
                ),
                IconButton(
                  onPressed: () {
                    context.go("/washing-station");
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            10.h.ph,
            CustomButton(
              onTap: () {
                context.go("/verify-location");
              },
              text: "Once a week",
            ),
            3.h.ph,
            CustomButton(
              onTap: () {
                context.go("/verify-location");
              },
              text: "Once a month",
            ),
            3.h.ph,
            CustomButton(
              onTap: () {
                context.go("/verify-location");
              },
              text: "Customize",
            ),
            3.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Row(
                children: [
                  CustomText(
                    "Get notification",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                  2.w.pw,
                  CupertinoSwitch(
                    value: isNotification,
                    onChanged: (value) {
                      setState(() {
                        isNotification = !isNotification;
                      });
                    },
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
