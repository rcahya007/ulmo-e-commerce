import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/convert_currency.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Text(
            'popular',
            style: heading2semi,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: dataPopularProduct.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 24,
              mainAxisExtent: 275,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: 164,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                dataPopularProduct[index]['imageUrl'],
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: dataPopularProduct[index]['liked'] == true
                              ? Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                    color: colorYellow400,
                                  ),
                                  child: Text(
                                    'new',
                                    style: body2med,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            CurrencyFormat.convertToIdr(
                                dataPopularProduct[index]['price'], 0),
                            style: body1med,
                          ),
                        ),
                        dataPopularProduct[index]['liked'] == true
                            ? SvgPicture.asset(
                                "assets/icons/like_filled.svg",
                                width: 20,
                                height: 18,
                              )
                            : SvgPicture.asset(
                                "assets/icons/like_no_filled.svg",
                                width: 20,
                                height: 18,
                              ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      dataPopularProduct[index]['title'],
                      style: body3reg,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
