import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulmo_ecommerce/common/data_global.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 56,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Center(
                  child: Text(
                    'ulmo',
                    style: heading1semi,
                  ),
                ),
              ),
              Container(
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
                        colorFilter: const ColorFilter.mode(
                            colorGray500, BlendMode.srcIn),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                    children: dataCategory.map((e) {
                  Map data = e as Map;
                  return Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      color: colorGray100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              16,
                            ),
                            child: Text(
                              data['title'],
                              style: heading2semi,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: double.infinity,
                          width: 82,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            child: Image.asset(
                              data['imageUrl'],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
