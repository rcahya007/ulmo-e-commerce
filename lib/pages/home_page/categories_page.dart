// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/pages/home_page/products_by_categories_page.dart';
import 'package:ulmo_ecommerce/widgets/search_custom.dart';
import 'package:ulmo_ecommerce/widgets/title_section.dart';

class CategoriesPage extends StatelessWidget {
  String? titleCategory;
  List? dataCategory;
  CategoriesPage(
    Key? key,
    this.titleCategory,
    this.dataCategory,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorWhite,
        iconTheme: const IconThemeData(
          color: colorBlack,
        ),
        title: Center(
          child: Text(
            toBeginningOfSentenceCase(titleCategory) ?? '',
            style: body1med.copyWith(
              color: colorBlack,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchCustom(),
            TitleSection(
              title: 'categories',
              padding: const EdgeInsets.all(
                16,
              ),
              textStyle: heading2semi,
            ),
            Column(
              children: dataCategory!.map((e) {
                Map data = e as Map;
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductsByCategories(title: data['title']),
                      )),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 14,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                data['imageUrl'],
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            data['title'],
                            style: body1reg,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
