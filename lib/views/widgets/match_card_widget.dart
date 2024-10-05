import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/match_model.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/views/screens/match_detail/match_detail_screen.dart';
import 'package:live_football_score/views/widgets/custom_text.dart';
import 'package:live_football_score/views/widgets/show_hide_text.dart';

import '../../utils/function.dart';

class MatchCardWidget extends StatelessWidget {
  final Matches? matches;
  const MatchCardWidget({super.key, this.matches});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const MatchDetailScreen(), arguments: {
          "matchId": matches?.id,
          // 'status': (matches?.status ?? 0) == 6
          //     ? 'FT'
          //     : (matches?.status ?? 0) == 17
          //         ? 'Abandoned'
          //         : (matches?.status ?? 0) == 1
          //             ? getTime("${matches?.start ?? ''}")
          //             : (matches?.statusTxt ?? ''),
        });
      },
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
                        text: (matches?.teams ?? []).isNotEmpty
                            ? (matches?.teams?[0].name ?? '')
                            : '',
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[0] ?? 0) >
                                        (matches?.score?[1] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
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
                        text: (matches?.teams ?? []).length > 1
                            ? (matches?.teams?[1].name ?? '')
                            : '',
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[1] ?? 0) >
                                        (matches?.score?[0] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            matches?.status == 2 || matches?.status == 3
                ? ShowHideText(
                    text: matches?.statusTxt ?? '',
                  )
                : matches?.status == 10
                    ? CustomText(
                        text: matches?.statusTxt ?? '',
                        color: secondaryColor,
                      )
                    : matches?.status == 6
                        ? const CustomText(
                            text: 'FT',
                          )
                        : matches?.status == 17
                            ? const CustomText(
                                text: 'AB',
                              )
                            : CustomText(
                                text: matches?.statusTxt ?? '',
                              ),
            SizedBox(
              width: 15.w,
            ),
            matches?.status == 1
                ? CustomText(text: getTime("${matches?.start ?? 0}"))
                : Column(
                    children: [
                      CustomText(
                        text: (matches?.score ?? []).isNotEmpty
                            ? "${matches?.score?[0] ?? ''}"
                            : '',
                        color: matches?.status == 2 ||
                                matches?.status == 3 ||
                                matches?.status == 10
                            ? secondaryColor
                            : Colors.black,
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[0] ?? 0) >=
                                        (matches?.score?[1] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                      CustomText(
                        text: (matches?.teams ?? []).length > 1
                            ? "${matches?.score?[1] ?? ''}"
                            : '',
                        color: matches?.status == 2 ||
                                matches?.status == 3 ||
                                matches?.status == 10
                            ? secondaryColor
                            : Colors.black,
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[1] ?? 0) >=
                                        (matches?.score?[0] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
