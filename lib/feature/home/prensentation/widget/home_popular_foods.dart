import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/util/my_dimens.dart';
import 'package:task_09/feature/home/prensentation/provider/home_provider.dart';

class HomePopularFoods extends StatelessWidget {
  const HomePopularFoods({super.key});

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<HomeProvider>(context).popularItem;
    return Container(
      height: context.screenHeight * .25,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          // section title
          MyDimens().getTitleAndViewAll("Popular Food Nearby", context),
          // food list
          Expanded(
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: items == null ? 0 : items.products.length,
              itemBuilder: (context, i) => Container(
                width: context.screenWidth * .375,
                margin: EdgeInsets.only(left: 12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.r),
                  boxShadow: MyDimens.getShadow,
                ),
                child: Column(
                  children: [
                    // image
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: MyColor.gray200,
                          borderRadius: BorderRadius.circular(7.r),
                          image: DecorationImage(
                            //image: AssetImage(MyImage.profilePic),
                            image: CachedNetworkImageProvider(
                              items!
                                  .products[i]
                                  .imageFullUrl, // "https://picsum.photos/200/100",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    // details
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 8.h,
                      ),
                      child: Column(
                        spacing: 2.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // title
                          Text(
                            items.products[i].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          // restaurant
                          Text(
                            items.products[i].restaurantName,
                            style: Theme.of(context).textTheme.labelSmall!
                                .copyWith(
                                  fontSize: 5.sp,
                                  color: MyColor.gray500,
                                ),
                          ),
                          // price & average rating
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // price
                              Text(
                                "\$${items.products[i].price}",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              // rating
                              Text(
                                "★ ${items.products[i].avgRating.toStringAsFixed(1)}",
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
