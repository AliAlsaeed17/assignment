import 'package:assignment/presentation/restaurant/about/custom_subtitle.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  CustomItemList({required this.list, Key? key}) : super(key: key);

  List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 8),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CustomSubtitle(
            title: list[index],
          );
        },
      ),
    );
  }
}
