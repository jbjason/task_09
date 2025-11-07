import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/core/constants/my_color.dart';

class MyDimens {
  Widget getDemoPage(String title) => Center(child: Text(title));

  static List<BoxShadow> get getShadow => [
    BoxShadow(
      offset: Offset(3.w, 3.h),
      blurRadius: 5.r,
      color: MyColor.gray200,
    ),
  ];

  Widget getTitleAndViewAll(String title, BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 12.w, right: 12.w, bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w900,color: MyColor.gray900),
          ),
          Text(
            "View All",
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: MyColor.success,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
