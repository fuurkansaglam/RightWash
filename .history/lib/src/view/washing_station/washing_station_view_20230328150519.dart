import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/button/custom_button.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/init/map/maps_launcher.dart';

class WashingStationView extends StatefulWidget {
  const WashingStationView({super.key});

  @override
  State<WashingStationView> createState() => _WashingStationViewState();
}

class _WashingStationViewState extends State<WashingStationView>
    with BaseSingleton {
  Uri openMap(String query) {
    Uri uri;

    if (kIsWeb) {
      uri = Uri.https(
          'www.google.com', '/maps/search/', {'api': '1', 'query': query});
    } else if (Platform.isAndroid) {
      uri = Uri(scheme: 'geo', host: '0,0', queryParameters: {'q': query});
    } else if (Platform.isIOS) {
      uri = Uri.https('maps.apple.com', '/', {'q': query});
    } else {
      uri = Uri.https(
          'www.google.com', '/maps/search/', {'api': '1', 'query': query});
    }

    return uri;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const HeaderWidget(
                  title: "Find your nearest\nwashing station",
                ),
                IconButton(
                  onPressed: () {
                    context.go("/washing-suggestion");
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            5.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Image.asset(
                    "google_map".toJpg,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            3.h.ph,
            const Divider(thickness: 1.5),
            CustomButton(
              onTap: () {
                MapsLauncher.launchCoordinates(38.9041, -77.0171);
              },
              text: "Open Google Maps",
            ),
            CustomButton(
              onTap: () {},
              text: "Washing Frequency",
            ),
          ],
        ),
      ),
    );
  }
}
