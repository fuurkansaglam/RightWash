import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';

class VerifyLocationView extends StatefulWidget {
  const VerifyLocationView({super.key});

  @override
  State<VerifyLocationView> createState() => _VerifyLocationViewState();
}

class _VerifyLocationViewState extends State<VerifyLocationView>
    with BaseSingleton {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                HeaderWidget(
                  title: "Verify your location",
                ),
                IconButton(
                  onPressed: () {
                    context.go(
                      "/washing-frequency",
                    );
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
