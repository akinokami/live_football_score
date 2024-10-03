import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/match_model.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/views/screens/match_detail/match_detail_screen.dart';
import 'package:live_football_score/views/widgets/custom_text.dart';

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
          'status': (matches?.status ?? 0) == 6
              ? 'FT'
              : (matches?.status ?? 0) == 17
                  ? 'Abandoned'
                  : (matches?.status ?? 0) == 1
                      ? getTime("${matches?.start ?? ''}")
                      : (matches?.statusTxt ?? ''),
        });
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
                  text: (matches?.teams ?? []).isNotEmpty
                      ? (matches?.teams?[0].name ?? '')
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
                  text: (matches?.teams ?? []).length > 1
                      ? (matches?.teams?[1].name ?? '')
                      : '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
