import 'package:flutter/material.dart';
import 'package:notesapp_off_isar/components/drawer_tile.dart';
import 'package:notesapp_off_isar/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      // surfaceTintColor: Colors.red,
      // shadowColor: Colors.red,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(Icons.edit),
          ),
          DrawerTile(
              title: "Notes",
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context)),
          DrawerTile(
              title: "Settings",
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
        ],
      ),
    );
  }
}
