import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/utils/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return scaffoldHeader(
      context,
      Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: placeholder(context),
      ),
    );
  }
}
