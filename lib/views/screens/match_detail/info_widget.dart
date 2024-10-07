import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/match_detail_model.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/utils/function.dart';
import 'package:live_football_score/views/screens/match_detail/stats_indicator_widget.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class InfoWidget extends StatelessWidget {
  final MatchDetailModel? matchDetailModel;
  const InfoWidget({super.key, this.matchDetailModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ///Insights
        Visibility(
          visible: (matchDetailModel?.notes ?? []).isNotEmpty,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'insights'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: CustomText(
                  text: (matchDetailModel?.notes ?? []).isNotEmpty
                      ? (matchDetailModel?.notes?[0].text ?? '')
                      : '',
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),

        ///Top Events
        Visibility(
          visible: matchDetailModel?.incs != null,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'top_events'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kSizedBoxH15,
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: matchDetailModel?.incs?.keys.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    String? key = matchDetailModel?.incs?.keys.elementAt(index);
                    Map<String, dynamic> minuteEvents =
                        matchDetailModel?.incs?[key];

                    return ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: minuteEvents.keys.map((minute) {
                        List<dynamic> events = minuteEvents[minute];

                        return Column(
                          children: events.map((event) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 1.sw * 0.42,
                                      child: Visibility(
                                        visible: event["pos"] == 0,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ///Goal
                                            Visibility(
                                              visible: event["type"] == 4,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Penalty Goal
                                            Visibility(
                                              visible: event["type"] == 5,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Penalty Missed
                                            Visibility(
                                              visible: event["type"] == 6,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Colors.red,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Change people
                                            Visibility(
                                              visible: event["type"] == 1,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
                                                child: Icon(
                                                  Icons.sync_alt,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Yellow Card
                                            Visibility(
                                              visible: event["type"] == 10,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.w),
                                                  child: Image.asset(
                                                    'assets/yellow.png',
                                                    width: 10.w,
                                                  )),
                                            ),

                                            ///Red Card
                                            Visibility(
                                              visible: event["type"] == 11,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.w),
                                                  child: Image.asset(
                                                    'assets/red.png',
                                                    width: 10.w,
                                                  )),
                                            ),

                                            ///Yellow Red Card
                                            Visibility(
                                              visible: event["type"] == 12,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5.w),
                                                  child: Image.asset(
                                                    'assets/yellow_red.png',
                                                    width: 15.w,
                                                  )),
                                            ),

                                            ///VR No Goal
                                            Visibility(
                                              visible: event["type"] == 26,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
                                                child: Icon(
                                                  Icons.video_call,
                                                  color: Colors.blue,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 1.sw * 0.35,
                                                  child: CustomText(
                                                    text: '${event["pl_name"]}',
                                                    color: event["type"] == 4 ||
                                                            event["type"] == 5
                                                        ? secondaryColor
                                                        : Colors.black,
                                                    isEllip: true,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["assists"]
                                                      .isNotEmpty,
                                                  child: SizedBox(
                                                    width: 1.sw * 0.35,
                                                    child: CustomText(
                                                      text: event["assists"]
                                                              .isNotEmpty
                                                          ? '${event["assists"].map((assist) => assist["pl_name"]).join(", ")}'
                                                          : '',
                                                      isEllip: true,
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 1,
                                                  child: SizedBox(
                                                    width: 1.sw * 0.35,
                                                    child: CustomText(
                                                      text:
                                                          '${event["pl_name_o"]}',
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 26,
                                                  child: const CustomText(
                                                    text: 'VAR - No Goal',
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 5,
                                                  child: const CustomText(
                                                    text: 'Penalty',
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 6,
                                                  child: const CustomText(
                                                    text: 'Missed Penalty',
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomText(
                                      text: "${event["min"]} '",
                                      color: event["type"] == 4 ||
                                              event["type"] == 5
                                          ? secondaryColor
                                          : Colors.black,
                                    ),
                                    SizedBox(
                                      width: 1.sw * 0.42,
                                      child: Visibility(
                                        visible: event["pos"] == 1,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 1.sw * 0.35,
                                                  child: CustomText(
                                                    text: '${event["pl_name"]}',
                                                    color: event["type"] == 4 ||
                                                            event["type"] == 5
                                                        ? secondaryColor
                                                        : Colors.black,
                                                    isEllip: true,
                                                    textAlign: TextAlign.right,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["assists"]
                                                      .isNotEmpty,
                                                  child: SizedBox(
                                                    width: 1.sw * 0.35,
                                                    child: CustomText(
                                                      text: event["assists"]
                                                              .isNotEmpty
                                                          ? '${event["assists"].map((assist) => assist["pl_name"]).join(", ")}'
                                                          : '',
                                                      isEllip: true,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 1,
                                                  child: SizedBox(
                                                    width: 1.sw * 0.35,
                                                    child: CustomText(
                                                      text:
                                                          '${event["pl_name_o"]}',
                                                      isEllip: true,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 26,
                                                  child: const CustomText(
                                                    text: 'VAR - No Goal',
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 5,
                                                  child: const CustomText(
                                                    text: 'Penalty',
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: event["type"] == 6,
                                                  child: const CustomText(
                                                    text: 'Missed Penalty',
                                                  ),
                                                )
                                              ],
                                            ),

                                            ///Goal
                                            Visibility(
                                              visible: event["type"] == 4,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Penalty
                                            Visibility(
                                              visible: event["type"] == 5,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Penalty Missed
                                            Visibility(
                                              visible: event["type"] == 6,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Colors.red,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Change People
                                            Visibility(
                                              visible: event["type"] == 1,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Icon(
                                                  Icons.sync_alt,
                                                  color: secondaryColor,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),

                                            ///Yellow Card
                                            Visibility(
                                              visible: event["type"] == 10,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.w),
                                                  child: Image.asset(
                                                    'assets/yellow.png',
                                                    width: 10.w,
                                                  )),
                                            ),

                                            ///Red Card
                                            Visibility(
                                              visible: event["type"] == 11,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.w),
                                                  child: Image.asset(
                                                    'assets/red.png',
                                                    width: 10.w,
                                                  )),
                                            ),

                                            ///Yellow Red Card
                                            Visibility(
                                              visible: event["type"] == 12,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.w),
                                                  child: Image.asset(
                                                    'assets/yellow_red.png',
                                                    width: 15.w,
                                                  )),
                                            ),

                                            ///VR No Goal
                                            Visibility(
                                              visible: event["type"] == 26,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Icon(
                                                  Icons.video_call,
                                                  color: Colors.blue,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                kSizedBoxH15,
                                // Padding(
                                //   padding:
                                //       EdgeInsets.only(top: 5.h, bottom: 5.h),
                                //   child: Divider(
                                //       height: 1.h,
                                //       color: grey.withOpacity(0.3)),
                                // ),
                              ],
                            );
                          }).toList(),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        ///Top Match Stats
        Visibility(
          visible: ((matchDetailModel?.stats ?? []).length > 1),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'top_match_stats'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kSizedBoxH10,
              StatsIndicatorWidget(
                h: matchDetailModel?.stats?[0].possession,
                a: matchDetailModel?.stats?[1].possession,
                title: 'possession'.tr,
              ),
              StatsIndicatorWidget(
                h: matchDetailModel?.stats?[0].shotsOn,
                a: matchDetailModel?.stats?[1].shotsOn,
                title: 'shots_on_target'.tr,
              ),
              StatsIndicatorWidget(
                h: matchDetailModel?.stats?[0].shotsOff,
                a: matchDetailModel?.stats?[1].shotsOff,
                title: 'shots_off_target'.tr,
              ),
              kSizedBoxH10,
              kSizedBoxH10,
            ],
          ),
        ),

        ///Top Season Stats
        Visibility(
          visible: ((matchDetailModel?.wstats?.teamSeason ?? []).length > 1),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'top_season_stats'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kSizedBoxH10,
              StatsIndicatorWidget(
                h: matchDetailModel
                    ?.wstats?.teamSeason?[0].matchesWonHomePercentage,
                a: matchDetailModel
                    ?.wstats?.teamSeason?[1].matchesWonHomePercentage,
                title: 'win_percentage_at_home'.tr,
              ),
              StatsIndicatorWidget(
                h: matchDetailModel
                    ?.wstats?.teamSeason?[0].matchesWonAwayPercentage,
                a: matchDetailModel
                    ?.wstats?.teamSeason?[1].matchesWonAwayPercentage,
                title: 'win_percentage_away'.tr,
              ),
              StatsIndicatorWidget(
                h: num.parse(matchDetailModel
                        ?.wstats?.teamSeason?[0].averageGoalsInMatch ??
                    '0'),
                a: num.parse(matchDetailModel
                        ?.wstats?.teamSeason?[1].averageGoalsInMatch ??
                    '0'),
                title: 'avg_total_goals_in_matches'.tr,
              ),
              StatsIndicatorWidget(
                h: matchDetailModel
                    ?.wstats?.teamSeason?[0].bothToScorePercentage,
                a: matchDetailModel
                    ?.wstats?.teamSeason?[1].bothToScorePercentage,
                title: 'both_teams_scored'.tr,
              ),
              kSizedBoxH10,
              kSizedBoxH10,
            ],
          ),
        ),

        ///Form
        Visibility(
          visible: (matchDetailModel?.forms ?? []).isNotEmpty,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'form'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: matchDetailModel?.forms?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 8.h, top: 8.h, left: 10.w, right: 10.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomText(
                                text:
                                    matchDetailModel?.forms?[index].name ?? '',
                              ),
                            ),
                            SizedBox(
                              height: 25.w,
                              child: Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: matchDetailModel
                                        ?.forms?[index].formsText?.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index1) {
                                      return Container(
                                        width: 25.w,
                                        padding: EdgeInsets.all(5.w),
                                        margin: EdgeInsets.only(right: 5.w),
                                        decoration: BoxDecoration(
                                            color: matchDetailModel
                                                        ?.forms?[index]
                                                        .formsText?[index1] ==
                                                    'W'
                                                ? secondaryColor
                                                : matchDetailModel
                                                                ?.forms?[index]
                                                                .formsText?[
                                                            index1] ==
                                                        'L'
                                                    ? red
                                                    : grey,
                                            borderRadius:
                                                BorderRadius.circular(100.r)),
                                        alignment: Alignment.center,
                                        child: CustomText(
                                          text: matchDetailModel?.forms?[index]
                                                  .formsText?[index1] ??
                                              '',
                                          color: Colors.white,
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible:
                            index != (matchDetailModel?.forms?.length ?? 1) - 1,
                        child:
                            Divider(height: 1.h, color: grey.withOpacity(0.3)),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),

        ///Table
        Visibility(
          visible: (matchDetailModel?.lte ?? []).isNotEmpty,
          child: Column(
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
                        text: 'table'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'P',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'W',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'D',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'L',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'GD',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.sw * 0.07,
                      child: const CustomText(
                        text: 'PTS',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: matchDetailModel?.lte?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(bottom: 8.h, top: 8.h, right: 10.w),
                        child: Row(
                          children: [
                            kSizedBoxW10,
                            SizedBox(
                              width: 1.sw * 0.05,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].ranking ?? ''}",
                              ),
                            ),
                            kSizedBoxW5,
                            Expanded(
                              child: CustomText(
                                  text:
                                      matchDetailModel?.lte?[index].teamName ??
                                          ''),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].played ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].wins ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].draws ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].loss ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].goalDifference ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 1.sw * 0.07,
                              child: CustomText(
                                text:
                                    "${matchDetailModel?.lte?[index].points ?? 0}",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible:
                            index != (matchDetailModel?.lte?.length ?? 1) - 1,
                        child:
                            Divider(height: 1.h, color: grey.withOpacity(0.3)),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),

        ///Game Info
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 35.h,
              color: greyLeague,
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'game_info'.tr,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'date_time'.tr,
                      ),
                      CustomText(
                        text:
                            getDate((matchDetailModel?.start ?? '').toString()),
                      ),
                    ],
                  ),
                  kSizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'referee'.tr,
                      ),
                      CustomText(
                        text: (matchDetailModel?.refs ?? []).isNotEmpty
                            ? (matchDetailModel?.refs?[0].name ?? '')
                            : '',
                      ),
                    ],
                  ),
                  kSizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'stadium'.tr,
                      ),
                      CustomText(
                        text: matchDetailModel?.venue?.name ?? '',
                      ),
                    ],
                  ),
                  kSizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'city'.tr,
                      ),
                      CustomText(
                        text: matchDetailModel?.venue?.city ?? '',
                      ),
                    ],
                  ),
                  kSizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'capacity'.tr,
                      ),
                      CustomText(
                        text: matchDetailModel?.venue?.capacity ?? '',
                      ),
                    ],
                  ),
                  kSizedBoxH5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'attendance'.tr,
                      ),
                      CustomText(
                        text: matchDetailModel?.venue?.spectators ?? '',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
