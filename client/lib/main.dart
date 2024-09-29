import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:client/screens/screens.dart';

final _router = GoRouter(
    routes: [
        GoRoute(
            path: "/",
            builder: (context, state) => const Logins()
        ),
        GoRoute(
            path: "/hub",
            builder: (context, state) => const Hubs()
        )
    ]
);

////////////////////////////////////////////////////

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router
    );
  }
}
