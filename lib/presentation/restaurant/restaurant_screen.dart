import 'package:assignment/presentation/resources/asset_manager.dart';
import 'package:assignment/presentation/resources/color_manager.dart';
import 'package:assignment/presentation/resources/size_manager.dart';
import 'package:assignment/presentation/resources/string_manager.dart';
import 'package:assignment/presentation/resources/style_manager.dart';
import 'package:assignment/presentation/restaurant/about/about_tab.dart';
import 'package:assignment/presentation/restaurant/about/custom_section.dart';
import 'package:assignment/presentation/restaurant/full_menu/full_menu_tab.dart';
import 'package:assignment/presentation/restaurant/reviwes/reviews_tab.dart';

import 'package:assignment/presentation/restaurant/widgets/custom_clipped_image.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen>
    with TickerProviderStateMixin {
  late final TabController controller;

  final String aboutText =
      "A hotel is an establishment that provides paid for lodging on a short term basis.Facilities provided a hotel range from a modest quiality";

  final List<String> categories = [
    "Indo Chinese",
    "Chats/Snacks",
    "Breakfast",
    "Beverages",
    "International"
  ];
  final shopTimings = {
    "Monday - Friday": "5:00 pm - 8:30 pm",
  };
  final List<String> features = [
    "Non Vegetarian",
    "Free Wifi",
    "Wed 50% OFF",
    "Organic Veggies",
  ];

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorManager.backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorManager.appBarBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: AppSize.iconSize,
            color: ColorManager.iconButtonColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: AppSize.iconSize,
              color: ColorManager.iconButtonColor,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                ClipPath(
                  clipper: CustomClippedImage(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      AssetManager.backgroundImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Samosa Corner",
                            style: AppStyle.titleTextStyle,
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: const TextSpan(
                              text:
                                  "Sahakara Nagar Main Rd, Outside Axis Bank, East Bangalore" +
                                      " ",
                              style: AppStyle.normalTextStyle,
                              children: [
                                TextSpan(
                                  text: "SHOW ON MAP",
                                  style: AppStyle.linkTextStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: const TextSpan(
                              text: "Open Time: ",
                              style: AppStyle.availableTextStyle,
                              children: [
                                TextSpan(
                                  text: "5:00 pm - 8:30 pm",
                                  style: AppStyle.normalTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 5),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: AppSize.iconSize,
                                      color: ColorManager.normalIconColor,
                                    ),
                                    const SizedBox(width: 2),
                                    const Text(
                                      "1.8" + " km",
                                      style: AppStyle.normalTextStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.block,
                                      size: AppSize.iconSize,
                                      color: ColorManager.normalIconColor,
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      "Delivery Not Available",
                                      style: AppStyle.normalTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TabBar(
                    controller: controller,
                    unselectedLabelColor: ColorManager.unActiveTabBarColor,
                    labelColor: ColorManager.activeTabBarColor,
                    indicatorColor: ColorManager.activeTabBarColor,
                    tabs: [
                      Tab(child: Text(AppStrings.aboutTabTitle)),
                      Tab(child: Text(AppStrings.reviewsTabTitle)),
                      Tab(child: Text(AppStrings.fullMenuTabTitle)),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  child: TabBarView(
                    controller: controller,
                    children: [
                      AboutTab(
                        aboutText: aboutText,
                        categories: categories,
                        shopTimings: shopTimings,
                        features: features,
                      ),
                      const ReviewsTab(),
                      const FullMenuTab(),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .185,
              left: MediaQuery.of(context).size.width * .77,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
