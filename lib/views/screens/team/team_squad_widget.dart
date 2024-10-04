import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/player/player_screen.dart';

import '../../../models/team_model.dart';
import '../../widgets/custom_text.dart';

class TeamSquadWidget extends StatelessWidget {
  final List<Participants>? players;
  final List<Participants>? coach;
  const TeamSquadWidget({super.key, this.players, this.coach});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Visibility(
          visible: (coach ?? []).isNotEmpty,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'coach'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, top: 10.w, bottom: 5.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: coach?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const PlayerScreen(),
                              arguments: {"playerId": coach?[index].id});
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                              color: secondaryColor,
                            ),
                            kSizedBoxW5,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: coach?[index].name),
                                CustomText(
                                  text: coach?[index].cname,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: (players ?? []).isNotEmpty,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'players'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: players?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const PlayerScreen(),
                              arguments: {"playerId": players?[index].id});
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 30.sp,
                              color: secondaryColor,
                            ),
                            // kSizedBoxW5,
                            // SizedBox(
                            //   width: 10.w,
                            //   child: CustomText(
                            //     text: players?[index].sNumber ?? '',
                            //   ),
                            // ),
                            kSizedBoxW5,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: players?[index].name),
                                CustomText(
                                  text: players?[index].cname,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
