import 'package:flutter/material.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';

class SplashView extends StatelessWidget with BaseSingleton {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("splash_top".toPng),
            ],
          ),
        ),
      ),
    );
  }
}
