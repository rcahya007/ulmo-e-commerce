import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/convert_currency.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/widgets/card_product.dart';
import 'package:ulmo_ecommerce/widgets/title_section.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(
          title: 'popular',
          padding: const EdgeInsets.all(
            16,
          ),
          textStyle: heading2semi,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: dataProduct.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 24,
              mainAxisExtent: 275,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CardProduct(
                id: index,
                imageUrl: dataProduct[index]['imageUrl'],
                liked: dataProduct[index]['liked'],
                price: dataProduct[index]['price'],
                title: dataProduct[index]['title'],
                newProduct: dataProduct[index]['newProduct'],
              );
            },
          ),
        )
      ],
    );
  }
}
