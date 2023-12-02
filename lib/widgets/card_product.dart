// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ulmo_ecommerce/common/convert_currency.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class CardProduct extends StatelessWidget {
  final int id;
  final String imageUrl;
  final bool liked;
  final bool newProduct;
  final int price;
  final String title;
  const CardProduct({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.liked,
    required this.newProduct,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(id),
      child: Container(
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
                        imageUrl,
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: newProduct == true
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
                    CurrencyFormat.convertToIdr(price, 0),
                    style: body1med,
                  ),
                ),
                liked == true
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
              title,
              style: body3reg,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
