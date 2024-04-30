import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_test/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}

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
          CustomRow(text: 'DASHBOARD', icon: Icons.home_rounded),
          CustomRow(text: 'SETTINGS', icon: Icons.settings),
          CustomRow(text: 'ABOUT', icon: Icons.error_rounded),
          CustomRow(text: 'LOGOUT', icon: Icons.logout_rounded),
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        leading: Icon(icon, size: 30),
        title: Text(
          text,
          style: const TextStyle(
            letterSpacing: 4,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
