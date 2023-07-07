import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:resize/resize.dart';

Widget placeholder(BuildContext context) {
  return Placeholder(
    strokeWidth: 16,
    color: Theme.of(context).colorScheme.secondary,
  );
}

Widget scaffoldHeader(BuildContext context, Widget child) {
  return KeyboardDismisser(
    child: Resize(
      builder: () {
        return child;
      },
    ),
  );
}
