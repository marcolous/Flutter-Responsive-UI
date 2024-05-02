import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_test/views/widgets/custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(),
            child: Icon(Icons.favorite_rounded, color: Colors.black, size: 90),
          ),
          Gap(70),
          CustomListTile(text: 'DASHBOARD', icon: Icons.home_rounded),
          CustomListTile(text: 'SETTINGS', icon: Icons.settings),
          CustomListTile(text: 'ABOUT', icon: Icons.error_rounded),
          CustomListTile(text: 'LOGOUT', icon: Icons.logout_rounded),
        ],
      ),
    );
  }
}
