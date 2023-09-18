import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/view/auth/login.dart';
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
          body: Center(
        child: TextButton(
          autofocus: true,
          clipBehavior: Clip.antiAlias,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            );
          },
          child: Text(
            'Next',
            style: TextStyle(fontSize: 1.rem),
          ),
        ),
      )),
    );
  }
}
