import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_football_score/models/team_model.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class TeamResultsWidget extends StatelessWidget {
  final List<Results>? results;
  const TeamResultsWidget({super.key, this.results});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.builder(
          itemCount: results?.length,
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
                        "${results?[index].cName} : ${results?[index].stName}",
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
                              text: (results?[index].teams ?? []).isNotEmpty
                                  ? (results?[index].teams?[0].name ?? '')
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
                              text: (results?[index].teams ?? []).length > 1
                                  ? (results?[index].teams?[1].name ?? '')
                                  : '',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
