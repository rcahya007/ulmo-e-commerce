import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/widgets/button_action.dart';
import 'package:ulmo_ecommerce/widgets/title_section.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 56,
            ),
            Expanded(
              child: TitleSection(
                title: 'bag',
                textStyle: heading1semi,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/surprised.svg',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'your bag is empty',
                    style: heading2semi,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'items remain in your bag for 1 hour, and then they’re moved to your Saved items',
                    style: body1reg.copyWith(color: colorGray500),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const Spacer(),
            const ButtonAction(
              title: 'Start shopping',
              color: colorYellow400,
            )
          ],
        ),
      ),
    );
  }
}
