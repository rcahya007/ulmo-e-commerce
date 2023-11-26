import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class SearchCustom extends StatelessWidget {
  const SearchCustom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
              colorFilter:
                  const ColorFilter.mode(colorGray500, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
