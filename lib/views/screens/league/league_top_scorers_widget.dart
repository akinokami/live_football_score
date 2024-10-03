import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/t.dart';

import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';

import '../../widgets/custom_text.dart';

class LeagueTopScorersWidget extends StatelessWidget {
  final List<T>? t;
  const LeagueTopScorersWidget({super.key, this.t});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  text: 'players'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 1.sh * 0.05,
                child: CustomText(
                  text: 'pen'.tr,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 1.sh * 0.05,
                child: CustomText(
                  text: 'gs'.tr,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: t?.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Row(
                  children: [
                    kSizedBoxW5,
                    SizedBox(
                      width: 10.w,
                      child: CustomText(
                        text: "${t?[index].ranking ?? ''}",
                      ),
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 30.sp,
                      color: secondaryColor,
                    ),
                    kSizedBoxW5,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: t?[index].participantName ?? ''),
                          CustomText(
                            text: t?[index].team?.name ?? '',
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1.sh * 0.05,
                      child: CustomText(
                        text: "${t?[index].penalties ?? 0}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 1.sh * 0.05,
                      child: CustomText(
                        text: "${t?[index].goals ?? 0}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
