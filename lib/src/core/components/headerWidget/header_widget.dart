import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../base/singleton/base_singleton.dart';
import '../text/custom_text.dart';

class HeaderWidget extends StatelessWidget with BaseSingleton {
  const HeaderWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors.dodgerBlue,
            colors.sanJuan,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Center(
        child: CustomText(
          title,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
