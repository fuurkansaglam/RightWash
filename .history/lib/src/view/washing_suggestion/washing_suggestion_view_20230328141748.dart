import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                const HeaderWidget(title: "Washing Suggestion"),
                IconButton(
                  onPressed: () {
                    context.go("/home");
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
