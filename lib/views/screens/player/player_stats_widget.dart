import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/utils/color_const.dart';
import '../../../models/player_model.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class PlayerStatsWidget extends StatelessWidget {
  final List<Stats>? stats;
  const PlayerStatsWidget({super.key, this.stats});

  @override
  Widget build(BuildContext context) {
    StatsOne? statsOne;
    if ((stats ?? []).isNotEmpty) {
      statsOne = stats?[0].stats;
    }
    return (stats ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView(
            children: [
              ///Top Stats
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'top_stats'.tr,
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
                              text: 'apperances'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALSTARTS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'goals'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALGOALS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'assists'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALASSIST,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'yellow_cards'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALYELLOWCARDS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'red_cards'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALREDCARDS,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///Attacking
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'attacking'.tr,
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
                              text: 'goals'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALGOALS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'assists'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALASSIST,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'goals_scored_per_match'.tr,
                            ),
                            CustomText(
                              text: statsOne?.gOALRATIO,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'minutes_per_goal'.tr,
                            ),
                            CustomText(
                              text: statsOne?.mINUTESPERGOAL,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'percentage_of_team_goals_scored'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tEAMCONTRIBUTIONPERCENTAGE,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'penalties_scored'.tr,
                            ),
                            CustomText(
                              text: statsOne?.pENALTYGOALS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'penalties_missed'.tr,
                            ),
                            CustomText(
                              text: statsOne?.pENALTYMISSED,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'goals_from_inside_box'.tr,
                            ),
                            CustomText(
                              text: statsOne?.gOALSINSIDEBOX,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'goals_from_outside_box'.tr,
                            ),
                            CustomText(
                              text: statsOne?.gOALSOUTSIDEBOX,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'headed_goals'.tr,
                            ),
                            CustomText(
                              text: statsOne?.hEADEDGOALS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'goals_as_a_substitute'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALGOALSASSUBSTITUTE,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'hit_the_woodwork'.tr,
                            ),
                            CustomText(
                              text: statsOne?.wOODWORK,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'shots'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALSHOTS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'shots_per_goal'.tr,
                            ),
                            CustomText(
                              text: statsOne?.sHOTSONPERGOAL,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'blocked_shots'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALBLOCKEDSHOTS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'key_passes'.tr,
                            ),
                            CustomText(
                              text: statsOne?.kEYPASSES,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'crosses'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALCROSSES,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'successful_crosses'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALSUCCESSFULCROSSES,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///Defending
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'defending'.tr,
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
                              text: 'defensive_errors'.tr,
                            ),
                            CustomText(
                              text: statsOne?.dEFENSIVEERROR,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'penalties_conceded'.tr,
                            ),
                            CustomText(
                              text: statsOne?.pENALTYCOMMIT,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'clearances'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALCLEARANCES,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'intercepted_crosses'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALINTERCEPTEDCROSSES,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'tickles'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALTACKLES,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///Discipline
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'discipline'.tr,
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
                              text: 'yellow_cards'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALYELLOWCARDS,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'red_cards'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALREDCARDS,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///Other Stats
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'other_stats'.tr,
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
                              text: 'offsides'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALOFFSIDES,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'air_challenges_won'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALAIRCHALLENGESWON,
                            ),
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'air_challenges_lose'.tr,
                            ),
                            CustomText(
                              text: statsOne?.tOTALAIRCHALLENGESLOST,
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
