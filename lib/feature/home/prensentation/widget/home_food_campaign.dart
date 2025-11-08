import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_09/config/extension/media_query_extension.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_constants.dart';
import 'package:task_09/core/constants/my_image.dart';
import 'package:task_09/core/util/my_dimens.dart';

class HomeFoodCampaign extends StatelessWidget {
  const HomeFoodCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .16,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      //   color: Colors.grey.shade300,
      child: Column(
        children: [
          // section title
          MyDimens().getTitleAndViewAll("Food Campaign", context),
          // food list
          Expanded(
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: MyConstants.navItemImages.length,
              itemBuilder: (context, i) => Container(
                width: context.screenWidth * .65,
                margin: EdgeInsets.only(left: 12.w),
                padding: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.r),
                  boxShadow: MyDimens.getShadow,
                ),
                child: Row(
                  spacing: 10.w,
                  children: [
                    Container(
                      width: context.screenWidth * .25,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(7.r),
                        image: DecorationImage(
                          image: AssetImage(MyImage.profilePic),
                          //  CachedNetworkImageProvider(
                          //   "https://picsum.photos/200/100",
                          // ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          Text(
                            "★★★★★",
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: MyColor.success,
                                ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$7.56 ",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$10",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelSmall!,
                              ),
                              Spacer(),
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
          ),
        ],
      ),
    );
  }
}
