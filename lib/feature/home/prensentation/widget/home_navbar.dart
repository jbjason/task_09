import 'package:flutter/material.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_constants.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({
    super.key,
    required this.currentPage,
    required this.onPageChange,
  });
  final int currentPage;
  final Function onPageChange;

  @override
  Widget build(BuildContext context) {
    final items = MyConstants.navItemImages;
    final itemWidth = context.screenWidth / items.length;
    return SizedBox(
      height: kBottomNavigationBarHeight * 1.5,
      child: Row(
        children: List.generate(
          items.length,
          (i) => _getNavBarItem(
            index: i,
            image: currentPage == i
                ? MyConstants.navItemSelectedImages[i]
                : MyConstants.navItemImages[i],
            // color: currentPage == i ? Colors.green : Colors.grey,
            width: itemWidth,
          ),
        ),
      ),
    );
  }

  Widget _getNavBarItem({
    required int index,
    required String image,
    // required Color color,
    required double width,
  }) => GestureDetector(
    onTap: () => onPageChange(index),
    child: SizedBox(width: width, child: Image.asset(image)),
  );
}
