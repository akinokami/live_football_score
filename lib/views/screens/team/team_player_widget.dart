import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';

import '../../../models/team_model.dart';
import '../../widgets/custom_text.dart';
import '../player/player_screen.dart';

class TeamPlayerWidget extends StatelessWidget {
  final EpStages? epStages;
  const TeamPlayerWidget({super.key, this.epStages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: epStages?.pstats?.length,
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
                  text: epStages?.pstats?[index].name ?? '',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: epStages?.pstats?[index].stats?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index1) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const PlayerScreen(), arguments: {
                            "playerId": epStages
                                ?.pstats?[index].stats?[index1].participant?.id
                          });
                        },
                        child: Row(
                          children: [
                            kSizedBoxW5,
                            SizedBox(
                              width: 10.w,
                              child: CustomText(
                                text:
                                    "${epStages?.pstats?[index].stats?[index1].ranking ?? ''}",
                              ),
                            ),
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                              color: secondaryColor,
                            ),
                            kSizedBoxW5,
                            Expanded(
                              child: CustomText(
                                  text: epStages?.pstats?[index].stats?[index1]
                                          .participant?.name ??
                                      ''),
                            ),
                            CustomText(
                                text: epStages
                                        ?.pstats?[index].stats?[index1].stat ??
                                    ''),
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
