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
            6.h.ph,
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
            5.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      1.w.pw,
                      const CustomText("Mon"),
                      3.w.pw,
                      const CustomText("Tues"),
                      3.w.pw,
                      const CustomText("Wed"),
                      2.w.pw,
                      const CustomText("Thurs"),
                      3.w.pw,
                      const CustomText("Fri"),
                      4.w.pw,
                      const CustomText("Sat"),
                      5.w.pw,
                      const CustomText("Sun"),
                      3.w.pw,
                      const CustomText("Mon"),
                    ],
                  ),
                  2.h.ph,
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "10",
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
                            "11",
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
                            "12",
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
                            "13",
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
                            "14",
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
                            "15",
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
                            "16",
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "17",
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
                            "18",
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
                            "19",
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
                            "20",
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
                            "21",
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
                            "22",
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
                            "23",
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
                            "24",
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: CustomText(
                            "25",
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
                            "26",
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
                            "27",
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
                            "28",
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
                            "29",
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
                            "30",
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
                            "31",
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  10.h.ph,
                  Container(
                    height: 10.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomText(
                                  "RED : ",
                                  textStyle: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                2.w.pw,
                                CustomText(
                                  "The right time to wash.",
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            2.h.ph,
                            Row(
                              children: [
                                CustomText(
                                  "GREEN : ",
                                  textStyle: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                2.w.pw,
                                CustomText(
                                  "Not the right time to wash. ",
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
