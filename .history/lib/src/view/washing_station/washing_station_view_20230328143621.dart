import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';

class WashingStationView extends StatelessWidget with BaseSingleton {
  const WashingStationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                HeaderWidget(
                  title: "Find your nearest\nwashing station",
                ),
                IconButton(
                  onPressed: () {
                    context.go("/washing-suggestion");
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
