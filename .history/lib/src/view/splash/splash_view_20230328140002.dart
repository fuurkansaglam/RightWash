import 'package:flutter/material.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatelessWidget with BaseSingleton {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("splash_top".toPng),
            Image.asset("logo".toPng),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("splash_bottom".toPng),
            ),
          ],
        ),
      ),
    );
  }
}
