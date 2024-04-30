import 'package:flutter/material.dart';

class PhoneSliverListBody extends StatelessWidget {
  const PhoneSliverListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
