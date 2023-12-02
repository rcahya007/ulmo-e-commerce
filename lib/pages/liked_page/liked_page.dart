import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';
import 'package:ulmo_ecommerce/widgets/button_action.dart';
import 'package:ulmo_ecommerce/widgets/title_section.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

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
                title: 'saved items',
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
                    'nothing saved...',
                    style: heading2semi,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '... no worries. Start saving as you shop by clicking the little heart',
                    style: body1reg.copyWith(color: colorGray500),
                    textAlign: TextAlign.center,
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
