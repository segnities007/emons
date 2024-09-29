import 'package:flutter/material.dart';
import 'package:client/screens/theme.dart';
import 'package:client/screens/hubs/home.dart';
import 'package:client/screens/hubs/notify.dart';
import 'package:client/screens/hubs/profile.dart';
import 'package:client/screens/hubs/search.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

const hubUIList = [
    Home(),
    Search(),
    Notify(),
    Profile(),
];

const hubTitleList = [
    "home",
    "seach",
    "notice",
    "profile",
];

const hubIconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
];

///////////////////////////////////////////////////

class Hubs extends HookWidget {
  const Hubs({super.key});

  @override
  Widget build(context) {
    final index = useState(0);

    return Scaffold(
        appBar: AppBar(
            title: const Text("EmoNS"),
            backgroundColor: green
        ),
        body: hubUIList[index.value],
        bottomNavigationBar: ConvexAppBar(
            style: TabStyle.react,
            backgroundColor: green,
            items: [
                for(int i=0; i<hubUIList.length; i++)
                TabItem(icon: hubIconList[i], title: hubTitleList[i])
            ],
            initialActiveIndex: 0,
            onTap: (int i) => index.value = i
        )
    );
  }
}

///////////////////////////////////////////////////
