import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/components/text/custom_text.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:sizer/sizer.dart';

class WashingSuggestionView extends StatelessWidget with BaseSingleton {
  const WashingSuggestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderWidget(title: "Washing Suggestion"),
                IconButton(
                  onPressed: () {
                    context.go("/home");
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            3.h.ph,
            Container(
              height: 6.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: colors.dodgerBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: CustomText(
                  "March 2023",
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
