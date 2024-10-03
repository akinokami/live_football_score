import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/match_detail_model.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/utils/function.dart';
import 'package:live_football_score/views/widgets/custom_card.dart';

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
        Column(
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

        ///Top Events
        Column(
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

        ///Top Match Stats
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 35.h,
              color: greyLeague,
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'top_match_stats'.tr,
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
