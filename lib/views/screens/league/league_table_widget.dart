import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/table_model.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class LeagueTableWidget extends StatelessWidget {
  final Tables? tables;
  final String? homeId;
  final String? awayId;
  const LeagueTableWidget({super.key, this.tables,this.homeId,this.awayId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 35.h,
            color: greyLeague,
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: 'league'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'P',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'W',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'D',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'L',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'GD',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 1.sw * 0.07,
                  child: const CustomText(
                    text: 'PTS',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: tables?.teams?.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 2.h, top: 2.h, right: 10.w),
                    child: Row(
                      children: [
                        Container(
                          width: 4.w,
                          color: (tables?.teams?[index].stagePhases ?? []).contains(75) ||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(3) ||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(1) ||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(12) ||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(15) ||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(13)||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(19)
                              ? Colors.green
                              : (tables?.teams?[index].stagePhases ?? []).contains(74) ||
                                      (tables?.teams?[index].stagePhases ?? [])
                                          .contains(8) ||
                                      (tables?.teams?[index].stagePhases ?? [])
                                          .contains(9) ||
                                      (tables?.teams?[index].stagePhases ?? [])
                                          .contains(7) ||
                                      (tables?.teams?[index].stagePhases ?? [])
                                          .contains(45) ||
                                      (tables?.teams?[index].stagePhases ?? [])
                                          .contains(14)||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(20)
                                  ? Colors.cyan
                                  : (tables?.teams?[index].stagePhases ?? [])
                                              .contains(68) ||
                                          (tables?.teams?[index].stagePhases ?? [])
                                              .contains(61)||
                                  (tables?.teams?[index].stagePhases ?? [])
                                      .contains(21)
                                      ? Colors.blue
                                      : (tables?.teams?[index].stagePhases ?? []).contains(6)
                                          ? Colors.orange
                                          : (tables?.teams?[index].stagePhases ?? []).contains(2)
                                              ? Colors.pink
                                              : (tables?.teams?[index].stagePhases ?? []).contains(4)
                                                  ? Colors.greenAccent
                                                  : (tables?.teams?[index].stagePhases ?? []).contains(48)
                                                      ? Colors.brown
                                                      : Colors.white,
                          height: 30.h,
                        ),
                        kSizedBoxW10,
                        SizedBox(
                          width: 1.sw * 0.05,
                          child: CustomText(
                            text: "${index + 1}",
                          ),
                        ),
                        // Icon(
                        //   Icons.account_circle,
                        //   size: 30.sp,
                        //   color: secondaryColor,
                        // ),
                        kSizedBoxW5,
                        Expanded(
                          child: CustomText(
                              text: tables?.teams?[index].teamName ?? ''),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text: "${tables?.teams?[index].played ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text: "${tables?.teams?[index].wins ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text: "${tables?.teams?[index].draws ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text: "${tables?.teams?[index].loss ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text:
                                "${tables?.teams?[index].goalDifference ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: CustomText(
                            text: "${tables?.teams?[index].points ?? 0}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: index != (tables?.teams?.length ?? 1) - 1,
                    child: Divider(height: 1.h, color: grey.withOpacity(0.3)),
                  ),
                ],
              );
            }),
          ),
          kSizedBoxH20,
          Container(
            width: double.infinity,
            color: greyLeague,
            padding: EdgeInsets.all(10.w),
            alignment: Alignment.centerLeft,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: tables?.legend?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index1) {
                  return Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 18.sp,
                          color: tables?.legend?[index1].stagePhase == 75 ||
                                  tables?.legend?[index1].stagePhase == 3 ||
                                  tables?.legend?[index1].stagePhase == 1 ||
                                  tables?.legend?[index1].stagePhase == 12 ||
                                  tables?.legend?[index1].stagePhase == 15||
                                  tables?.legend?[index1].stagePhase == 13||
                                  tables?.legend?[index1].stagePhase == 19
                              ? Colors.green
                              : tables?.legend?[index1].stagePhase == 74 ||
                                      tables?.legend?[index1].stagePhase == 8 ||
                                      tables?.legend?[index1].stagePhase == 9 ||
                                      tables?.legend?[index1].stagePhase == 7 ||
                                      tables?.legend?[index1].stagePhase == 45||
                                  tables?.legend?[index1].stagePhase == 14||
                                  tables?.legend?[index1].stagePhase == 20
                                  ? Colors.cyan
                                  : tables?.legend?[index1].stagePhase == 68 ||
                                          tables?.legend?[index1].stagePhase ==
                                              61||
                                          tables?.legend?[index1].stagePhase ==
                                              21
                                      ? Colors.blue
                                      : tables?.legend?[index1].stagePhase == 6
                                          ? Colors.orange
                                          : tables?.legend?[index1]
                                                      .stagePhase ==
                                                  2
                                              ? Colors.pink
                                              : tables?.legend?[index1]
                                                          .stagePhase ==
                                                      4
                                                  ? Colors.greenAccent
                                                  : tables?.legend?[index1]
                                                              .stagePhase ==
                                                          48
                                                      ? Colors.brown
                                                      : Colors.white,
                        ),
                        kSizedBoxW5,
                        Expanded(
                          child: CustomText(
                            text: tables?.legend?[index1].stagePhaseText ?? '',
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          kSizedBoxH5,
        ],
      ),
    );
  }
}
