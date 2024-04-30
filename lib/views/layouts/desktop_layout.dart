import 'package:flutter/material.dart';
import 'package:responsive_test/views/UI/desktop%20UI/desktop_sliver_list_body.dart';
import 'package:responsive_test/views/home_view.dart';
import 'package:responsive_test/views/layouts/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 4,
          child: TabletLayout(),
        ),
        Expanded(child: DesktopSliverListBody())
      ],
    );
  }
}
