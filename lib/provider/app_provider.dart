import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppProvider extends ChangeNotifier {

   void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}