import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class StatsIndicatorWidget extends StatelessWidget {
  final int? h;
  final int? a;
  final String? title;
  const StatsIndicatorWidget({super.key, this.h, this.a, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "${h ?? ''}"),
              CustomText(text: title ?? ''),
              CustomText(text: "${a ?? ''}"),
            ],
          ),
          kSizedBoxH3,
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 7.h,
                  child: LinearProgressIndicator(
                    value: (a ?? 0) / ((h ?? 0) + (a ?? 0)),
                    backgroundColor: secondaryColor,
                    valueColor: AlwaysStoppedAnimation<Color>(statsColor),
                  ),
                ),
              ),
              kSizedBoxW5,
              Expanded(
                child: SizedBox(
                  height: 7.h,
                  child: LinearProgressIndicator(
                    value: (a ?? 0) / ((h ?? 0) + (a ?? 0)),
                    backgroundColor: statsColor,
                    valueColor: AlwaysStoppedAnimation<Color>(stats2Color),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
