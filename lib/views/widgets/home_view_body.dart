import 'package:flutter/material.dart';
import 'package:responsive_test/views/layouts/desktop_layout.dart';
import 'package:responsive_test/views/layouts/tablet_layout.dart';
import 'package:responsive_test/views/layouts/phone_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      
      if (constrains.maxWidth < 600) {
        return const PhoneLayout();
      } else if (constrains.maxWidth < 900) {
        return const TabletLayout();
      } else {
        return const DesktopLayout();
      }
    });
  }
}
