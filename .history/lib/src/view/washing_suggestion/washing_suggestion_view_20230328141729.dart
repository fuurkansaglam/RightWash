import 'package:flutter/material.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';

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
                HeaderWidget(title: "Washing Suggestion"),
                IconButton(
                  onPressed: () {},
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
