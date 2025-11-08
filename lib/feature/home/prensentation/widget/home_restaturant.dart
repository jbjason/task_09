import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_constants.dart';
import 'package:task_09/core/constants/my_image.dart';
import 'package:task_09/core/util/my_dimens.dart';

class HomeRestaturant extends StatelessWidget {
  const HomeRestaturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // section title
        MyDimens().getTitleAndViewAll("Restaurants", context),
        // food list
        ListView.builder(
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: MyConstants.navItemImages.length,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          itemBuilder: (context, i) => Container(
            width: context.screenWidth * .35,
            height: context.screenWidth * .25,
            margin: EdgeInsets.only(bottom: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7.r),
              boxShadow: MyDimens.getShadow,
            ),
            child: Row(
              spacing: 10.w,
              children: [
                Container(
                  width: context.screenWidth * .22,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(7.r),
                    image: DecorationImage(
                      image: AssetImage(MyImage.profilePic),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          spacing: 5.h,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fried Noodles",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Mc Donald",
                              style: Theme.of(context).textTheme.labelSmall!
                                  .copyWith(
                                    fontSize: 8.sp,
                                    color: MyColor.gray500,
                                  ),
                            ),
                            Text(
                              "★★★★★",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: MyColor.success,
                                  ),
                            ),
                            Text(
                              "\$7.56",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite_border),
                          Icon(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
