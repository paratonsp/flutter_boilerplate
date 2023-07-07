import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

runSetup() async {
  if (kReleaseMode) {
    await dotenv.load(fileName: "release.env-sample");
  } else {
    await dotenv.load(fileName: "debug.env-sample");
  }
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}
