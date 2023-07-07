import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'view/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        baseForREM: 16,
        size: Size(
          ResizeUtil().screenWidth,
          ResizeUtil().screenHeight,
        ),
        builder: () {
          return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: 'Flutter Boilerplate',
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.system,
            home: Home(),
          );
        });
  }
}
