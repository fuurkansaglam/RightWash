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
            5.h.ph,
            Container(
              height: 6.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: colors.dodgerBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: CustomText(
                  "March 2023",
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            3.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      1.w.pw,
                      CustomText("Mon"),
                      3.w.pw,
                      CustomText("Tues"),
                      3.w.pw,
                      CustomText("Wed"),
                      2.w.pw,
                      CustomText("Thurs"),
                      3.w.pw,
                      CustomText("Fri"),
                      3.w.pw,
                      CustomText("Sat"),
                      5.w.pw,
                      CustomText("Sun"),
                      3.w.pw,
                      CustomText("Mon"),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "1",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "2",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "3",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "4",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "5",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "6",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "7",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "8",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  1.h.ph,
                  Row(
                    children: [
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "9",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "2",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "3",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "4",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "5",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "6",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "7",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "8",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
