import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_football_score/models/league_model.dart';

import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';

import '../../widgets/custom_text.dart';

class LeagueTandPWidget extends StatelessWidget {
  final List<Estats>? estats;
  const LeagueTandPWidget({super.key, this.estats});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: estats?.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: estats?[index].name ?? '',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: estats?[index].stats?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index1) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Row(
                        children: [
                          kSizedBoxW5,
                          SizedBox(
                            width: 10.w,
                            child: CustomText(
                              text:
                                  "${estats?[index].stats?[index1].ranking ?? ''}",
                            ),
                          ),
                          Icon(
                            Icons.account_circle,
                            size: 30.sp,
                            color: secondaryColor,
                          ),
                          kSizedBoxW5,
                          Expanded(
                            child: CustomText(
                                text: estats?[index]
                                        .stats?[index1]
                                        .participant
                                        ?.name ??
                                    ''),
                          ),
                          CustomText(
                              text: estats?[index].stats?[index1].stat != "null"
                                  ? (estats?[index].stats?[index1].stat ?? '')
                                  : '0'),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
        });
  }
}
