import 'package:flutter/material.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/pages/home_page/categories_page.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Column(
          children: dataCategory.map((e) {
        Map data = e as Map;
        return GestureDetector(
          onTap: () {
            print('Open ${data["title"]}');
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesPage(
                      key, data["title"], dataLivingRoomCategories),
                ));
          },
          child: Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: colorGray100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Text(
                      data['title'],
                      style: heading2semi,
                    ),
                  ),
                ),
                SizedBox(
                  height: double.infinity,
                  width: 82,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    child: Image.asset(
                      data['imageUrl'],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
