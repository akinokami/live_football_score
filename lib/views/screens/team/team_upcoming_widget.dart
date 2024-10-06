import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/team_model.dart';
import 'package:live_football_score/utils/function.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';
import '../league/league_screen.dart';
import '../match_detail/match_detail_screen.dart';

class TeamUpcomingWidget extends StatelessWidget {
  final List<Fixtures>? fixtures;
  const TeamUpcomingWidget({super.key, this.fixtures});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.builder(
          itemCount: fixtures?.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const LeagueScreen(), arguments: {
                      "leagueId": fixtures?[index].stId,
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text:
                          "${fixtures?[index].cName} : ${fixtures?[index].stName}",
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                    ),
                  ),
                ),
                InkWell(
                  onTap: null,
                  // onTap: () {
                  //   Get.to(() => const MatchDetailScreen(), arguments: {
                  //     "matchId": fixtures?[index].id,
                  //   });
                  // },
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Expanded(
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
                                    text: (fixtures?[index].teams ?? [])
                                            .isNotEmpty
                                        ? (fixtures?[index].teams?[0].name ??
                                            '')
                                        : '',
                                    fontWeight: FontWeight.normal,
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
                                    text: (fixtures?[index].teams ?? [])
                                                .length >
                                            1
                                        ? (fixtures?[index].teams?[1].name ??
                                            '')
                                        : '',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        CustomText(text: getTime("${fixtures?[index].start}"))
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
