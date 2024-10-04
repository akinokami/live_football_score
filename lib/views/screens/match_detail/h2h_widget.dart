import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/h2h_model.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class H2HWidget extends StatelessWidget {
  final H2HModel? h2hModel;
  const H2HWidget({super.key, this.h2hModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if ((h2hModel?.h2h?.matches ?? []).isNotEmpty)
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(text: 'head_to_head_matches'.tr),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: h2hModel?.h2h?.matches?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.sports_soccer,
                                  size: 18.sp,
                                  color: secondaryColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(
                                  text: (h2hModel?.h2h?.matches?[index].teams ??
                                              [])
                                          .isNotEmpty
                                      ? (h2hModel?.h2h?.matches?[index]
                                              .teams?[0].name ??
                                          '')
                                      : '',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.sports_soccer,
                                  size: 18.sp,
                                  color: secondaryColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(
                                  text: (h2hModel?.h2h?.matches?[index].teams ??
                                                  [])
                                              .length >
                                          1
                                      ? (h2hModel?.h2h?.matches?[index]
                                              .teams?[1].name ??
                                          '')
                                      : '',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (index != (h2hModel?.h2h?.matches?.length ?? 0) - 1)
                        Divider(height: 1.h, color: grey.withOpacity(0.3)),
                    ],
                  );
                },
              ),
            ],
          ),
        if ((h2hModel?.teams ?? []).isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: (h2hModel?.teams ?? []).length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                        text:
                            "${'last_matches'.tr} : ${h2hModel?.teams?[index].name}"),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: h2hModel?.teams?[index].matches?.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, matchIndex) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sports_soccer,
                                      size: 18.sp,
                                      color: secondaryColor,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    CustomText(
                                      text: (h2hModel
                                                      ?.teams?[index]
                                                      .matches?[matchIndex]
                                                      .teams ??
                                                  [])
                                              .isNotEmpty
                                          ? (h2hModel
                                                  ?.teams?[index]
                                                  .matches?[matchIndex]
                                                  .teams?[0]
                                                  .name ??
                                              '')
                                          : '',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sports_soccer,
                                      size: 18.sp,
                                      color: secondaryColor,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    CustomText(
                                      text: (h2hModel
                                                          ?.teams?[index]
                                                          .matches?[matchIndex]
                                                          .teams ??
                                                      [])
                                                  .length >
                                              1
                                          ? (h2hModel
                                                  ?.teams?[index]
                                                  .matches?[matchIndex]
                                                  .teams?[1]
                                                  .name ??
                                              '')
                                          : '',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (matchIndex !=
                              (h2hModel?.teams?[index].matches?.length ?? 0) -
                                  1)
                            Divider(height: 1.h, color: grey.withOpacity(0.3)),
                        ],
                      );
                    },
                  ),
                ],
              );
            },
          ),
      ],
    );
  }
}
