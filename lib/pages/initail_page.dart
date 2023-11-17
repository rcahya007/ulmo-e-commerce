import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});
  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: homeMenu.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
          color: colorGray200,
          width: 2.0,
        ))),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/logo_ecommerce.svg',
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(colorGray400, BlendMode.srcIn),
              ),
              label: "",
              activeIcon: SvgPicture.asset(
                'assets/icons/logo_ecommerce.svg',
                width: 24,
                height: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/shopping_bag.svg',
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(colorGray400, BlendMode.srcIn),
              ),
              label: "",
              activeIcon: SvgPicture.asset(
                'assets/icons/shopping_bag.svg',
                width: 24,
                height: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/like.svg',
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(colorGray400, BlendMode.srcIn),
              ),
              label: "",
              activeIcon: SvgPicture.asset(
                'assets/icons/like.svg',
                width: 24,
                height: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(colorGray400, BlendMode.srcIn),
              ),
              label: "",
              activeIcon: SvgPicture.asset(
                'assets/icons/user.svg',
                width: 24,
                height: 24,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
