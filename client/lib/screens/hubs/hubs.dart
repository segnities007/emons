import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'ui/navigation_bar.dart';
import '../../model/hub_list.dart';
import 'ui/app_bar.dart';
import 'ui/drawer.dart';

///////////////////////////////////////////////////

class Hubs extends HookWidget {
  const Hubs({super.key});

  @override
  Widget build(context) {
    final index = useState(0);

    void changeIndex(int newIndex){
      index.value = newIndex;
    }

  return Scaffold(
    appBar: appBar,
    drawer: EmonsDrawer(changeIndex: changeIndex),
    body: HubList.ui[index.value],
    bottomNavigationBar: EmonsNavigationBar(
      currentIndex: index.value,
      changeIndex: changeIndex
      )
    );
  }
}

///////////////////////////////////////////////////
