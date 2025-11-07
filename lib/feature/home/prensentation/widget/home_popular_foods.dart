import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_constants.dart';
import 'package:task_09/core/util/my_dimens.dart';

class HomePopularFoods extends StatelessWidget {
  const HomePopularFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .23,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      //   color: Colors.grey.shade300,
      child: Column(
        children: [
          MyDimens().getTitleAndViewAll("Popular Food Nearby", context),
          Expanded(
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: MyConstants.navItemImages.length,
              itemBuilder: (context, i) => Container(
                width: context.screenWidth * .35,
                margin: EdgeInsets.only(left: 12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.r),
                  boxShadow: MyDimens.getShadow,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(7.r),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://picsum.photos/200/100",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        // child: CachedNetworkImage(
                        //   imageUrl: "https://picsum.photos/500/50",
                        //   fit: BoxFit.cover,
                        //   placeholder: (context, url) =>
                        //       CircularProgressIndicator(),
                        //   errorWidget: (context, url, error) => Icon(Icons.error),
                        // ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 8.h,
                      ),
                      child: Column(
                        spacing: 2.h,
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
                                  fontSize: 5.sp,
                                  color: MyColor.gray500,
                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$7.56",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "★ 4.7",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: MyColor.success,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
