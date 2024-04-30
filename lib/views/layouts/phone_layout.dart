import 'package:flutter/material.dart';
import 'package:responsive_test/views/UI/phone%20UI/Phone_sliver_list_body.dart';
import 'package:responsive_test/views/UI/phone%20UI/phone_sliver_grid_body.dart';

class PhoneLayout extends StatelessWidget {
  const PhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        PhoneSliverGridBody(),
        PhoneSliverListBody(),
      ],
    );
  }
}
