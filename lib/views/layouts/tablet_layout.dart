import 'package:flutter/material.dart';
import 'package:responsive_test/views/UI/Tablet%20UI/tablet_grid_view_body.dart';
import 'package:responsive_test/views/UI/phone%20UI/Phone_sliver_list_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        TabletGridViewBody(),
        PhoneSliverListBody(),
      ],
    );
  }
}
