import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../theme.dart';

///////////////////////////////////////////////////

class EmonsNavigationBar extends HookWidget {
  const EmonsNavigationBar({super.key, required this.changeIndex, required this.currentIndex});

  final void Function(int) changeIndex;
  final int currentIndex;

  @override
  Widget build(context) {
  //TODO シングルトン使用してやれるようにすること
    return NavigationBar(
      indicatorColor: lightGreen,
      backgroundColor: green,
      onDestinationSelected: changeIndex,
      selectedIndex: currentIndex,
      destinations: const [
        NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home"),
        NavigationDestination(
            selectedIcon: Icon(Icons.search_outlined),
            icon: Icon(Icons.search),
            label: "Search"),
        NavigationDestination(
            selectedIcon: Icon(Icons.add_circle_outline),
            icon: Icon(Icons.add_circle),
            label: "Post"),
        NavigationDestination(
            selectedIcon: Icon(Icons.notifications_outlined),
            icon: Icon(Icons.notifications),
            label: "Notice"),
        NavigationDestination(
            selectedIcon: Icon(Icons.person_outline),
            icon: Icon(Icons.person),
            label: "Profile"),
      ]
    );
  }
}
