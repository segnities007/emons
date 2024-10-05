import 'package:flutter/material.dart';
import '../../theme.dart';
import '../../../model/hub_list.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const n = 1.2;

class EmonsDrawer extends HookWidget {
  const EmonsDrawer({super.key, required this.changeIndex});

  final void Function(int) changeIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: lightGreen,
            ),
            child: const Text("Emons"),
          ),
          for (int i = 0; i < HubList.ui.length; i++)
            navigateTile(
              label: HubList.label[i],
              icon: HubList.icon[i],
              changeIndex: changeIndex,
              index: i,
              context: context,
            )
        ],
      ),
    );
  }
}

Widget navigateTile({
  required String label,
  required IconData icon,
  required void Function(int) changeIndex,
  required int index,
  required BuildContext context,
}) {
  return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          onPressed: () {
            changeIndex(index);
            context.pop(context);
          },
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0,16,0,16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, size: 32 * n),
                  const SizedBox(width: 16),
                  Expanded(
                    child:
                        Text(label, style: const TextStyle(fontSize: 16 * 1.5)),
                  ),
                ],
              ))));
}
