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
            10.h.ph,
            CustomButton(
              onTap: () {},
              text: "Once a week",
            ),
            3.h.ph,
            CustomButton(
              onTap: () {},
              text: "Once a month",
            ),
            3.h.ph,
            CustomButton(
              onTap: () {},
              text: "Customize",
            ),
            10.h.ph,
            Row(
              children: [
                CustomText(
                  "Bildirim",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}
