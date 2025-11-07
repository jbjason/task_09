import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_icon.dart';
import 'package:task_09/core/util/my_dimens.dart';
import 'package:task_09/feature/home/prensentation/widget/home_banners.dart';
import 'package:task_09/feature/home/prensentation/widget/home_categories.dart';
import 'package:task_09/feature/home/prensentation/widget/home_popular_foods.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 7.h,
          children: [
            // location & icons
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 12.w,
                right: 12.w,
                top: 13.h,
                bottom: 5.h,
              ),
              child: Row(
                spacing: 10.w,
                children: [
                  // home icon
                  Image.asset(
                    MyIcon.home2,
                    color: MyColor.gray400,
                    width: 11.sp,
                  ),
                  // location text
                  Expanded(
                    child: Text(
                      "Extension Pallabi Mirpur, Dhaka",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(color: MyColor.gray400),
                    ),
                  ),
                  // notification icon
                  Image.asset(MyIcon.notification, width: 11.sp),
                ],
              ),
            ),
            // searchBox
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w),
              child: DecoratedBox(
                decoration: BoxDecoration(boxShadow: MyDimens.getShadow),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search food ot restaurant here...",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    suffixIcon: Image.asset(MyIcon.search1, width: 10.w),
                  ),
                ),
              ),
            ),
            // banners
            HomeBanners(),
            // categories
            HomeCategories(),
            // popular foods
            HomePopularFoods(),
          ],
        ),
      ),
    );
  }
}
