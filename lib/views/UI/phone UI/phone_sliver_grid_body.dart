import 'package:flutter/material.dart';
import 'package:responsive_test/views/widgets/custom_container.dart';

class PhoneSliverGridBody extends StatelessWidget {
  const PhoneSliverGridBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => const CustomContainer(),
    );
  }
}

