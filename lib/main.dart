import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/konstants.dart';
import 'screens/onboardingScreen/onboarding_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Ojt App',
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            textTheme:
                GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
        home: OnboardingScreen());
  }
}
