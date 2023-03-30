import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
