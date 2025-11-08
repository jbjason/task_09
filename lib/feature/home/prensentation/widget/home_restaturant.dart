import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/util/my_dimens.dart';
import 'package:task_09/feature/home/prensentation/provider/home_provider.dart';

class HomeRestaturant extends StatelessWidget {
  const HomeRestaturant({super.key});
  @override
  Widget build(BuildContext context) {
    final items = Provider.of<HomeProvider>(context).homeRestaurant;
    return Column(
      children: [
        // section title
        MyDimens().getTitleAndViewAll("Restaurants", context),
        // food list
        ListView.builder(
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: items == null ? 0 : items.restaurants.length,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          itemBuilder: (context, i) => Container(
            width: context.screenWidth * .35,
            height: context.screenWidth * .22,
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
                    color: MyColor.gray200,
                    borderRadius: BorderRadius.circular(7.r),
                    image: DecorationImage(
                      // image: AssetImage(MyImage.profilePic),
                      image: CachedNetworkImageProvider(
                        items!
                            .restaurants[i]
                            .coverPhotoFullUrl, //"https://picsum.photos/200/100",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              items.restaurants[i].name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              items.restaurants[i].slug,
                              style: Theme.of(context).textTheme.labelSmall!
                                  .copyWith(
                                    fontSize: 8.sp,
                                    color: MyColor.gray500,
                                  ),
                            ),
                            Text(
                              "${"★" * (items.restaurants[i].avgRating == 0 ? 5 : items.restaurants[i].avgRating)} ${items.restaurants[i].ratingCount}",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: MyColor.success,
                                  ),
                            ),
                            Text(
                              " \$${items.restaurants[i].priceStartsFrom} - \$",
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
                          Icon(Icons.favorite_border, size: 18.w),
                          Icon(Icons.add, size: 18.w),
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
