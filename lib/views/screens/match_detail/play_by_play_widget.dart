import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_football_score/models/match_detail_model.dart';
import 'package:live_football_score/views/widgets/custom_text.dart';

import '../../../utils/color_const.dart';

class PlayByPlayWidget extends StatelessWidget {
  final List<Comms>? comms;
  const PlayByPlayWidget({super.key, this.comms});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: comms?.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            color: greyLeague,
            padding: EdgeInsets.all(10.w),
            margin: EdgeInsets.all(5.w),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "${comms?[index].min ?? ''}",
                      fontWeight: FontWeight.w500,
                    ),
                    Visibility(
                      visible: comms?[index].injTime != null,
                      child: CustomText(
                        text: " + ${comms?[index].injTime ?? ''}",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  text: comms?[index].txt ?? '',
                  maxLines: 3,
                ),
              ],
            ),
          );
        });
  }
}
