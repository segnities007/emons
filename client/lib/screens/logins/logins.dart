import 'package:flutter/material.dart';
import 'package:client/screens/logins/splash.dart';
import 'package:client/screens/theme.dart';

class Logins extends StatelessWidget {
  const Logins({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("EmoNS"),
            backgroundColor: green
        ),
        body: const Splash()
    );
  }
}
