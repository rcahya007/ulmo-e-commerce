import 'package:flutter/material.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorYellow500,
      body: Center(
        child: Text(
          'ulmo',
          style: heading1semi,
        ),
      ),
    );
  }
}
