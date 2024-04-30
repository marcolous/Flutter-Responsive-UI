import 'package:flutter/material.dart';
import 'package:responsive_test/views/widgets/grid_view_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth < 600) {
              return const PhoneGridViewBody();
            } else {
              return const TabletGridViewBody();
            }
          }),
        ),
        const SliverListBody(),
      ],
    );
  }
}

class SliverListBody extends StatelessWidget {
  const SliverListBody({
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
