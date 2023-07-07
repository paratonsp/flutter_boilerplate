import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import '../utils/widgets.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return scaffoldHeader(
      context,
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Boilerplate',
            style: TextStyle(fontSize: 1.5.rem),
          ),
        ),
        body: placeholder(context),
      ),
    );
  }
}
