import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/core/base/singleton/base_singleton.dart';
import 'package:right_wash/src/core/components/button/custom_button.dart';
import 'package:right_wash/src/core/components/headerWidget/header_widget.dart';
import 'package:right_wash/src/core/extensions/num_extensions.dart';
import 'package:right_wash/src/core/extensions/string_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class WashingStationView extends StatefulWidget {
  const WashingStationView({super.key});

  @override
  State<WashingStationView> createState() => _WashingStationViewState();
}

class _WashingStationViewState extends State<WashingStationView>
    with BaseSingleton {
  Future<void> openMap(BuildContext context, double lat, double lng) async {
    String url = '';
    String urlAppleMaps = '';
    if (Platform.isAndroid) {
      url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
      }
    } else {
      urlAppleMaps = 'https://maps.apple.com/?q=$lat,$lng';
      url = 'comgooglemaps://?saddr=&daddr=$lat,$lng&directionsmode=driving';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else if (await canLaunchUrl(Uri.parse(urlAppleMaps))) {
        await launchUrl(Uri.parse(urlAppleMaps));
      } else {
        throw 'Could not launch $url';
      }
    }
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
            5.h.ph,
            const Divider(thickness: 1.5),
            2.h.ph,
            CustomButton(
              onTap: () async {
                openMap(context, 10, 10);
              },
              text: "Open Google Maps",
            ),
          ],
        ),
      ),
    );
  }
}
