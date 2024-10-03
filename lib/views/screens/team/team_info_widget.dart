import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/views/widgets/custom_text.dart';

import '../../../models/team_model.dart';
import '../../../utils/color_const.dart';

class TeamInfoWidget extends StatelessWidget {
  final List<Stages>? stages;
  const TeamInfoWidget({super.key, this.stages});

  @override
  Widget build(BuildContext context) {
    return (stages ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: stages?.length,
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
                          "${stages?[index].cName ?? ''} ${stages?[index].stName ?? ''}",
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: SizedBox(
                      height: 25.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView.builder(
                                itemCount: stages?[index].forms?.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index1) {
                                  return Container(
                                    width: 25.w,
                                    padding: EdgeInsets.all(5.w),
                                    margin: EdgeInsets.only(right: 5.w),
                                    decoration: BoxDecoration(
                                        color: stages?[index].forms?[index1] ==
                                                'W'
                                            ? secondaryColor
                                            : stages?[index].forms?[index1] ==
                                                    'L'
                                                ? red
                                                : grey,
                                        borderRadius:
                                            BorderRadius.circular(100.r)),
                                    alignment: Alignment.center,
                                    child: CustomText(
                                      text: stages?[index].forms?[index1] ?? '',
                                      color: Colors.white,
                                    ),
                                  );
                                }),
                          ),
                          Visibility(
                            visible: stages?[index].standing != null,
                            child: Row(
                              children: [
                                const CustomText(text: '# '),
                                CustomText(
                                  text:
                                      "${stages?[index].standing?.ranking ?? '0'}",
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.w, right: 2.w),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.sp,
                                    color: grey,
                                  ),
                                ),
                                const CustomText(text: 'P '),
                                CustomText(
                                  text:
                                      "${stages?[index].standing?.ranking ?? '0'}",
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.w, right: 2.w),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.sp,
                                    color: grey,
                                  ),
                                ),
                                const CustomText(text: 'GD '),
                                CustomText(
                                  text:
                                      "${stages?[index].standing?.ranking ?? '0'}",
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.w, right: 2.w),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.sp,
                                    color: grey,
                                  ),
                                ),
                                const CustomText(text: 'PTS '),
                                CustomText(
                                  text:
                                      "${stages?[index].standing?.ranking ?? '0'}",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
  }
}
