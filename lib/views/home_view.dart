import 'package:flutter/material.dart';
import 'package:responsive_test/views/widgets/custom_drawer.dart';
import 'package:responsive_test/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.of(context).size.width < 900 ? buildAppBar() : null,
      body: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: HomeViewBody(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
    );
  }
}
