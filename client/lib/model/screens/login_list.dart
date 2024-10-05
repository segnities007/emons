import 'package:flutter/material.dart';
import '../../screens/logins/sign_in.dart';
import '../../screens/logins/sign_up.dart';
import '../../screens/logins/splash.dart';

class LoginList {
  static const ui = [
    Splash(),
    SignIn(),
    SignUp(),
  ];

  static const label = ["Splash", "Sign in", "Sign up"];

  static const icon = [
    Icons.more_horiz,
    Icons.login,
    Icons.person_add
  ];
}
