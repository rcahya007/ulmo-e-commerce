import 'package:flutter/material.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/widgets/search_custom.dart';
import 'package:ulmo_ecommerce/pages/home_page/widgets/category_section.dart';
import 'package:ulmo_ecommerce/pages/home_page/widgets/popular_card.dart';
import './widgets/stories_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              const SearchCustom(),
              const StoriesSlider(),
              const CategorySection(),
              const PopularCard(),
            ],
          ),
        ),
      ),
    );
  }
}
