import 'package:flutter/material.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class StoriesSlider extends StatelessWidget {
  const StoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(
              right: 12,
            ),
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(dataStories[index]['imageUrl']),
                  fit: BoxFit.fill,
                )),
            child: Container(
                padding: const EdgeInsets.only(
                  top: 48,
                  right: 8,
                  left: 9,
                  bottom: 9,
                ),
                child: Text(
                  dataStories[index]['title'],
                  style: body3med.copyWith(
                    color: colorWhite,
                  ),
                )),
          );
        },
        itemCount: dataStories.length,
      ),
    );
  }
}
