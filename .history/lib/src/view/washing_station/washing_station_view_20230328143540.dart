import 'package:flutter/material.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';

class WashingStationView extends StatelessWidget with BaseSingleton {
  const WashingStationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [HeaderWidget(title: "title")],
        ),
      ),
    );
  }
}
