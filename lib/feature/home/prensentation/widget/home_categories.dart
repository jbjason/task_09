import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_constants.dart';
import 'package:task_09/core/constants/my_icon.dart';
import 'package:task_09/core/util/my_dimens.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDimens().getTitleAndViewAll("Categories", context),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              MyConstants.navItemImages.length * 2,
              (i) => Container(
                width: 50.w,
                //padding: EdgeInsets.all(5.w),
                margin: EdgeInsets.only(left: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5.h,
                  children: [
                    Container(
                      height: 44.w,
                      width: 46.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        boxShadow: MyDimens.getShadow,
                        color: Colors.white,
                        // image: DecorationImage(
                        //   image: CachedNetworkImageProvider(
                        //     "https://picsum.photos/500/50",
                        //   ),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      child: Image.asset(MyIcon.settings),
                    ),
                    Text(
                      "Coffee",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: MyColor.gray900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
