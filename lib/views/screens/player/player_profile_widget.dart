import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/player_model.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class PlayerProfileWidget extends StatelessWidget {
  final PlayerModel? playerModel;
  const PlayerProfileWidget({super.key, this.playerModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ///Manager Bio
        Visibility(
          visible: playerModel?.pos == 9,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'manager_bio'.tr,
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
                          text: 'age'.tr,
                        ),
                        CustomText(
                          text: "${playerModel?.age ?? ''} ${'years'.tr}",
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'date_of_birth'.tr,
                        ),
                        CustomText(
                          text: playerModel?.dateOfBirth ?? '',
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'country'.tr,
                        ),
                        CustomText(
                          text: playerModel?.cname ?? '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        ///Player Bio
        Visibility(
          visible: playerModel?.pos != 9,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'player_bio'.tr,
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
                          text: 'height'.tr,
                        ),
                        CustomText(
                          text: "${playerModel?.height ?? ''} ${'cm'.tr}",
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'weight'.tr,
                        ),
                        CustomText(
                          text: "${playerModel?.weight ?? ''} ${'kg'.tr}",
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'age'.tr,
                        ),
                        CustomText(
                          text: "${playerModel?.age ?? ''} ${'years'.tr}",
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'date_of_birth'.tr,
                        ),
                        CustomText(
                          text: playerModel?.dateOfBirth ?? '',
                        ),
                      ],
                    ),
                    kSizedBoxH5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'country'.tr,
                        ),
                        CustomText(
                          text: playerModel?.cname ?? '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
