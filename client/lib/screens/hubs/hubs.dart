import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'ui/navigation_bar.dart';
import 'post.dart';
import 'home.dart';
import 'notify.dart';
import 'profile.dart';
import 'search.dart';
import 'ui/app_bar.dart';

///////////////////////////////////////////////////

class Hubs extends HookWidget {
  const Hubs({super.key});

  @override
  Widget build(context) {
    final index = useState(0);

    return Scaffold(
        appBar: appBar,
        body: HubLists.ui[index.value],
        bottomNavigationBar: EmonsNavigationBar(
        currentIndex: index.value,
        changeIndex: (int newIndex) {
          index.value = newIndex;
        }));
  }
}

///////////////////////////////////////////////////

class HubLists {
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
    "notice",
    "profile",
  ];

  static const icon = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  static const selectedIcon = [

  ];
}
