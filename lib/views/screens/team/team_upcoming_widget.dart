import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_football_score/models/team_model.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

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
                Container(
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
                InkWell(
                  onTap: () {
                    // Get.to(() => const MatchDetailScreen(), arguments: {
                    //   "matchId": matches?.id,
                    //   'status': (matches?.status ?? 0) == 6
                    //       ? 'FT'
                    //       : (matches?.status ?? 0) == 17
                    //           ? 'Abandoned'
                    //           : (matches?.status ?? 0) == 1
                    //               ? getTime("${matches?.start ?? ''}")
                    //               : (matches?.statusTxt ?? ''),
                    // });
                  },
                  child: Padding(
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
                              text: (fixtures?[index].teams ?? []).isNotEmpty
                                  ? (fixtures?[index].teams?[0].name ?? '')
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
                              text: (fixtures?[index].teams ?? []).length > 1
                                  ? (fixtures?[index].teams?[1].name ?? '')
                                  : '',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                // ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: 3,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index1) {
                //       return Column(
                //         children: [
                //           MatchCardWidget(),
                //           Visibility(
                //             visible: index1 != (3) - 1,
                //             child: Divider(
                //                 height: 1.h, color: grey.withOpacity(0.3)),
                //           ),
                //         ],
                //       );
                //     })
              ],
            );
          }),
    );
  }
}
