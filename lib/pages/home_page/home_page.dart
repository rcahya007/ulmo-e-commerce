import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/pages/home_page/widgets/category.dart';
import 'package:ulmo_ecommerce/pages/home_page/widgets/popular_card.dart';
import './widgets/stories_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 56,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: Center(
                    child: Text(
                      'ulmo',
                      style: heading1semi,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: colorGray100,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: body1reg.copyWith(
                          color: colorGray500,
                        ),
                        border: InputBorder.none,
                        icon: SvgPicture.asset(
                          'assets/icons/search.svg',
                          colorFilter: const ColorFilter.mode(
                              colorGray500, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                ),
                const StoriesSlider(),
                const CategoryHomePage(),
                const PopularCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
