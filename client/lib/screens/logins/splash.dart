import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(context) {
    return Center(
        child: TextButton(
            child: const Text("Next"),
            onPressed: () {
              context.go("/hub");
            }
        )
    );
  }
}
