import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/match_detail_model.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';
import 'stats_indicator_widget.dart';

class StatsWidget extends StatelessWidget {
  final List<Stats>? stats;
  const StatsWidget({super.key, this.stats});

  @override
  Widget build(BuildContext context) {
    return (stats ?? []).length <= 1
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'team_stats'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kSizedBoxH10,
                  StatsIndicatorWidget(
                    h: stats?[0].possession,
                    a: stats?[1].possession,
                    title: 'possession'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].shotsOn,
                    a: stats?[1].shotsOn,
                    title: 'shots_on_target'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].shotsOff,
                    a: stats?[1].shotsOff,
                    title: 'shots_off_target'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].shotsBlocked,
                    a: stats?[1].shotsBlocked,
                    title: 'blocked_shots'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].corners,
                    a: stats?[1].corners,
                    title: 'corner_kicks'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].offsides,
                    a: stats?[1].offsides,
                    title: 'offsides'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].throwIn,
                    a: stats?[1].throwIn,
                    title: 'throw_ins'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].fouls,
                    a: stats?[1].fouls,
                    title: 'fouls'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].yellow,
                    a: stats?[1].yellow,
                    title: 'yellow_cards'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].crosses,
                    a: stats?[1].crosses,
                    title: 'crosses'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].counterAttacks,
                    a: stats?[1].counterAttacks,
                    title: 'counter_attacks'.tr,
                  ),
                  StatsIndicatorWidget(
                    h: stats?[0].goalKicks,
                    a: stats?[1].goalKicks,
                    title: 'goal_kicks'.tr,
                  ),
                ],
              )
            ],
          );
  }
}
