import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ulmo_ecommerce/pages/cart_page/cart_page.dart';
import 'package:ulmo_ecommerce/pages/home_page/home_page.dart';
import 'package:ulmo_ecommerce/pages/liked_page/liked_page.dart';
import 'package:ulmo_ecommerce/pages/user_page/user_page.dart';

const colorBlack = Color(0xff212121);
const colorWhite = Color(0xffFFFFFF);
const colorGray500 = Color(0xff9E9E9E);
const colorGray400 = Color(0xffBDBDBD);
const colorGray300 = Color(0xffE0E0E0);
const colorGray200 = Color(0xffEEEEEE);
const colorGray100 = Color(0xffF5F5F5);
const colorYellow500 = Color(0xffFFC107);
const colorYellow400 = Color(0xffFFCA28);
const colorYellow300 = Color(0xffFFD54F);
const colorYellow200 = Color(0xffFFE082);
const colorYellow100 = Color(0xffFFECB3);
const colorIndigo500 = Color(0xff3F51B5);
const colorIndigo400 = Color(0xff5C6BC0);
const colorIndigo300 = Color(0xff7986CB);
const colorIndigo200 = Color(0xff9FA8DA);
const colorIndigo100 = Color(0xffC5CAE9);
const colorRed500 = Color(0xffF44336);
const colorRed400 = Color(0xffEF5350);
const colorRed300 = Color(0xffE57373);
const colorRed200 = Color(0xffEF9A9A);
const colorRed100 = Color(0xffFFCDD2);
const colorGreen500 = Color(0xff4CAF50);
const colorGreen400 = Color(0xff66BB6A);
const colorGreen300 = Color(0xff81C784);
const colorGreen200 = Color(0xffA5D6A7);
const colorGreen100 = Color(0xffC8E6C9);

TextStyle heading0semi = GoogleFonts.poppins(
  fontSize: 48,
  fontWeight: FontWeight.w600,
);
TextStyle heading0reg = GoogleFonts.poppins(
  fontSize: 48,
  fontWeight: FontWeight.w400,
);
TextStyle heading0light = GoogleFonts.poppins(
  fontSize: 48,
  fontWeight: FontWeight.w300,
);
TextStyle heading1semi = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: FontWeight.w600,
);
TextStyle heading1reg = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: FontWeight.w400,
);
TextStyle heading1light = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: FontWeight.w300,
);
TextStyle heading2semi = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);
TextStyle heading2reg = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w400,
);
TextStyle heading2light = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w300,
);
TextStyle body0med = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
TextStyle body0reg = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w400,
);
TextStyle body0light = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w300,
);
TextStyle body1med = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle body1reg = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
TextStyle body1light = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w300,
);
TextStyle body2med = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle body2reg = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle body2light = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w300,
);
TextStyle body3med = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
TextStyle body3reg = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
TextStyle body3light = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

const List<Widget> homeMenu = <Widget>[
  HomePage(),
  CartPage(),
  LikedPage(),
  UserPage(),
];

const List dataStories = [
  {
    'title': 'best of 2020',
    'imageUrl': 'assets/image_home_stories/best_of_2020.png',
  },
  {
    'title': 'the golden hour',
    'imageUrl': 'assets/image_home_stories/the_golden_hour.png',
  },
  {
    'title': 'lovely kitchen',
    'imageUrl': 'assets/image_home_stories/lovely_kitchen.png',
  },
  {
    'title': 'summer choice',
    'imageUrl': 'assets/image_home_stories/summer_choice.png',
  },
];

const List dataCategory = [
  {
    'title': 'bedroom',
    'imageUrl': 'assets/image_home_category/bathroom.png',
  },
  {
    'title': 'living room',
    'imageUrl': 'assets/image_home_category/living_room.png',
  },
  {
    'title': 'kitchen',
    'imageUrl': 'assets/image_home_category/kitchen.png',
  },
  {
    'title': 'dining',
    'imageUrl': 'assets/image_home_category/dining.png',
  },
  {
    'title': 'bathroom',
    'imageUrl': 'assets/image_home_category/bathroom.png',
  },
];

const List dataPopularProduct = [
  {
    'title':
        "Wooden bedside table featuring a raised desi Wooden bedside table featuring a raised desi",
    'imageUrl': "assets/image_home_popular/1.png",
    'price': 150000,
    'liked': true,
    'newProduct': true,
  },
  {
    'title':
        "Chair made of ash wood sourced from responsib Chair made of ash wood sourced from responsib",
    'imageUrl': "assets/image_home_popular/2.png",
    'price': 150000,
    'liked': false,
    'newProduct': false,
  },
  {
    'title':
        "Square bedside table with legs, a rattan shelf and a Square bedside table with legs, a rattan shelf and a ",
    'imageUrl': "assets/image_home_popular/3.png",
    'price': 150000,
    'liked': false,
    'newProduct': false,
  },
  {
    'title': "Dark wood side board with a faceted drawer",
    'imageUrl': "assets/image_home_popular/4.png",
    'price': 150000,
    'liked': true,
    'newProduct': true,
  },
  {
    'title':
        "Wooden bedside table featuring a raised desi Wooden bedside table featuring a raised desi",
    'imageUrl': "assets/image_home_popular/1.png",
    'price': 150000,
    'liked': true,
    'newProduct': true,
  },
  {
    'title':
        "Chair made of ash wood sourced from responsib Chair made of ash wood sourced from responsib",
    'imageUrl': "assets/image_home_popular/2.png",
    'price': 150000,
    'liked': false,
    'newProduct': false,
  },
  {
    'title':
        "Square bedside table with legs, a rattan shelf and a Square bedside table with legs, a rattan shelf and a ",
    'imageUrl': "assets/image_home_popular/3.png",
    'price': 150000,
    'liked': false,
    'newProduct': false,
  },
  {
    'title': "Dark wood side board with a faceted drawer",
    'imageUrl': "assets/image_home_popular/4.png",
    'price': 150000,
    'liked': true,
    'newProduct': true,
  },
];

const List dataLivingRoomCategories = [
  {
    'title': "Furniture",
    'imageUrl': "assets/image_livingRoom_categories/furniture.png"
  },
  {
    'title': "Lighting",
    'imageUrl': "assets/image_livingRoom_categories/lighting.png"
  },
  {
    'title': "Rugs",
    'imageUrl': "assets/image_livingRoom_categories/rugs.png",
  },
  {
    'title': "Mirrors",
    'imageUrl': "assets/image_livingRoom_categories/mirrors.png"
  },
  {
    'title': "Blankets",
    'imageUrl': "assets/image_livingRoom_categories/blankets.png"
  },
  {
    'title': "Cushions",
    'imageUrl': "assets/image_livingRoom_categories/cushions.png"
  },
  {
    'title': "Curtains",
    'imageUrl': "assets/image_livingRoom_categories/curtains.png"
  },
  {
    'title': "Baskets",
    'imageUrl': "assets/image_livingRoom_categories/baskets.png"
  },
  {
    'title': "Vases",
    'imageUrl': "assets/image_livingRoom_categories/vases.png"
  },
  {
    'title': "Boxes",
    'imageUrl': "assets/image_livingRoom_categories/boxes.png"
  },
];
