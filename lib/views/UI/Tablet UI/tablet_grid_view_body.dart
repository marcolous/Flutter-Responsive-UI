import 'package:flutter/material.dart';
import 'package:responsive_test/views/widgets/custom_container.dart';

class TabletGridViewBody extends StatelessWidget {
  const TabletGridViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: height * .2,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) => const AspectRatio(
              aspectRatio: 1,
              child: CustomContainer(),
            ),
          ),
        ),
      ),
    );
  }
}
