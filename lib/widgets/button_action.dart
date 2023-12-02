import 'package:flutter/material.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class ButtonAction extends StatelessWidget {
  final String title;
  final Color color;
  const ButtonAction({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Text(
          title,
          style: body1med,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
