import 'package:flutter/material.dart';
import '../screens/hubs/home.dart';
import '../screens/hubs/search.dart';
import '../screens/hubs/notify.dart';
import '../screens/hubs/post.dart';
import '../screens/hubs/profile.dart';

class HubList {
  static const ui = [
    Home(),
    Search(),
    Post(),
    Notify(),
    Profile(),
  ];

  static const label = [
    "home",
    "seach",
    "post",
    "notice",
    "profile",
  ];

  static const icon = [
    Icons.home,
    Icons.search,
    Icons.add_circle,
    Icons.notifications,
    Icons.person,
  ];

  static const selectedIcon = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.add_circle_outline,
    Icons.notifications_outlined,
    Icons.person_outline,
  ];
}
