import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/player_model.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class PlayerCareerWidget extends StatelessWidget {
  final List<Teams>? teams;
  const PlayerCareerWidget({super.key, this.teams});

  @override
  Widget build(BuildContext context) {
    final List<Teams> clubs =
        teams?.where((element) => element.isNational == 0).toList() ?? [];
    final List<Teams> national =
        teams?.where((element) => element.isNational == 1).toList() ?? [];
    return ListView(
      children: [
        Visibility(
          visible: clubs.isNotEmpty,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'club_history'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: clubs.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sports_soccer,
                            size: 30.sp,
                            color: secondaryColor,
                          ),
                          kSizedBoxW5,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: clubs[index].name ?? ''),
                                CustomText(
                                  text: clubs[index].cname ?? '',
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                          CustomText(text: clubs[index].fromTo ?? ''),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: clubs.isNotEmpty,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'national_team_history'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: national.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sports_soccer,
                            size: 30.sp,
                            color: secondaryColor,
                          ),
                          kSizedBoxW5,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: national[index].name ?? ''),
                                CustomText(
                                  text: national[index].cname ?? '',
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                          CustomText(text: national[index].fromTo ?? ''),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
