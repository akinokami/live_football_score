import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/league_model.dart';

import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/team/team_screen.dart';

import '../../widgets/custom_text.dart';
import '../player/player_screen.dart';

class LeagueTandPWidget extends StatelessWidget {
  final String? type;
  final List<Estats>? estats;
  const LeagueTandPWidget({super.key, this.estats, this.type});

  @override
  Widget build(BuildContext context) {
    return (estats ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView.builder(
            itemCount: estats?.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: estats?[index].name ?? '',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: estats?[index].stats?.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index1) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: InkWell(
                            onTap: () {
                              if (type == 'p') {
                                Get.to(() => const PlayerScreen(), arguments: {
                                  "playerId": estats?[index]
                                      .stats?[index1]
                                      .participant
                                      ?.id,
                                });
                              } else {
                                Get.to(() => const TeamScreen(), arguments: {
                                  "teamId": estats?[index]
                                      .stats?[index1]
                                      .participant
                                      ?.id,
                                });
                              }
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 1.sw * 0.05,
                                  child: CustomText(
                                    text:
                                        "${estats?[index].stats?[index1].ranking ?? ''}",
                                  ),
                                ),
                                Icon(
                                  type == 'p'
                                      ? Icons.account_circle
                                      : Icons.sports_soccer,
                                  size: 30.sp,
                                  color: secondaryColor,
                                ),
                                kSizedBoxW5,
                                type == 'p'
                                    ? Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                                text: estats?[index]
                                                        .stats?[index1]
                                                        .participant
                                                        ?.name ??
                                                    ''),
                                            CustomText(
                                              text: estats?[index]
                                                      .stats?[index1]
                                                      .team
                                                      ?.name ??
                                                  '',
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      )
                                    : Expanded(
                                        child: CustomText(
                                            text: estats?[index]
                                                    .stats?[index1]
                                                    .participant
                                                    ?.name ??
                                                ''),
                                      ),
                                CustomText(
                                    text: estats?[index].stats?[index1].stat !=
                                            "null"
                                        ? (estats?[index].stats?[index1].stat ??
                                            '')
                                        : '0'),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              );
            });
  }
}
