import 'package:flutter/material.dart';
import 'package:responsive_test/views/layouts/adaptive_layout.dart';
import 'package:responsive_test/views/layouts/desktop_layout.dart';
import 'package:responsive_test/views/layouts/tablet_layout.dart';
import 'package:responsive_test/views/layouts/phone_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const PhoneLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout());
  }
}
