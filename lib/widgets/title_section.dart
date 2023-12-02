// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  const TitleSection({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
          padding: padding,
          child: Text(
            title,
            style: textStyle,
          ),
        );
  }
}
