import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/widgets/card_product.dart';
import 'package:ulmo_ecommerce/widgets/search_custom.dart';

class ProductsByCategories extends StatelessWidget {
  final String title;
  const ProductsByCategories({
    super.key,
    required this.title,
  });

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
            toBeginningOfSentenceCase(title) ?? '',
            style: body1med.copyWith(
              color: colorBlack,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SearchCustom(),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7.5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: colorGray100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sort',
                            style: body2med,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            'assets/icons/direction-vertical.svg',
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7.5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: colorGray100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter',
                            style: body2med,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            'assets/icons/filter.svg',
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (dataProduct.length / 4).ceil(),
                separatorBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(
                    bottom: 24,
                    top: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: colorGray100,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 9.5,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Hard to decide?',
                              style: body1reg,
                            ),
                            Text(
                              'We are ready for help',
                              style: body2reg.copyWith(
                                color: colorGray500,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 7.5,
                        ),
                        decoration: BoxDecoration(
                          color: colorYellow400,
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Need help',
                            style: body2med,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                itemBuilder: (context, index) {
                  int startIndex = index * 4; //0, 4
                  int endIndex = startIndex + 4; //4 4+4=8
                  if (endIndex > dataProduct.length) {
                    endIndex = dataProduct.length;
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.7,
                      crossAxisSpacing: 15,
                    ),
                    itemCount: endIndex - startIndex, //4 8-4,
                    itemBuilder: (context, index) {
                      int itemIndex = startIndex + index; //0+1 4+1
                      return CardProduct(
                        id: itemIndex,
                        imageUrl: dataProduct[itemIndex]['imageUrl'],
                        liked: dataProduct[itemIndex]['liked'],
                        newProduct: dataProduct[itemIndex]['newProduct'],
                        price: dataProduct[itemIndex]['price'],
                        title: dataProduct[itemIndex]['title'],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
