import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../theme.dart';
import '../../../model/hub_list.dart';

///////////////////////////////////////////////////

class EmonsNavigationBar extends HookWidget {
  const EmonsNavigationBar(
      {super.key, required this.changeIndex, required this.currentIndex});

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
        destinations: [
          for (int i = 0; i < HubList.ui.length; i++)
            NavigationDestination(selectedIcon: Icon(HubList.selectedIcon[i]),icon: Icon(HubList.icon[i]), label: HubList.label[i] )
        ]);
  }
}
