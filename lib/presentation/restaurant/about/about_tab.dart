import 'package:assignment/presentation/resources/color_manager.dart';
import 'package:assignment/presentation/resources/size_manager.dart';
import 'package:assignment/presentation/resources/string_manager.dart';
import 'package:assignment/presentation/resources/style_manager.dart';
import 'package:assignment/presentation/restaurant/about/custom_item_list.dart';
import 'package:assignment/presentation/restaurant/about/custom_section.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  AboutTab({
    required this.aboutText,
    required this.categories,
    required this.shopTimings,
    required this.features,
    Key? key,
  }) : super(key: key);

  String aboutText;
  List<String> categories;
  Map<String, String> shopTimings;
  List<String> features;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              aboutText,
              style: AppStyle.normalTextStyle,
            ),
          ),
          const Divider(thickness: 1),
          CustomSection(
            title: AppStrings.categoriesTitle,
            widget: CustomItemList(list: categories),
          ),
          const Divider(thickness: 1),
          CustomSection(
            title: AppStrings.shopTimingsTitle,
            widget: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: ColorManager.normalIconColor,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shopTimings.keys.first,
                            style: AppStyle.subTitleTextStyle,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            shopTimings.values.first,
                            style: AppStyle.normalTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: ColorManager.closedIconColor,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Closed on Friday's",
                        style: AppStyle.normalTextStyle
                            .copyWith(color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(thickness: 1),
          CustomSection(
            title: "Features",
            widget: CustomItemList(list: features),
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
