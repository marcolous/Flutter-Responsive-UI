import 'package:flutter/material.dart';
import 'package:responsive_test/views/widgets/custom_container.dart';

class DesktopSliverListBody extends StatelessWidget {
  const DesktopSliverListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomContainer(),
        ),
        Expanded(child: CustomContainer()),
      ],
    );
  }
}
