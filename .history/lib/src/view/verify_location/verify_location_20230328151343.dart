import 'package:flutter/material.dart';
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
          children: [HeaderWidget(title: "Ve")],
        ),
      ),
    );
  }
}
