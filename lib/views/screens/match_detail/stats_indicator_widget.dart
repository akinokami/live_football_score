import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class StatsIndicatorWidget extends StatelessWidget {
  final num? h;
  final num? a;
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
                    value: ((h ?? 1) + (a ?? 1)) == 0
                        ? (a ?? 1) / 1
                        : (a ?? 1) / ((h ?? 1) + (a ?? 1)),
                    backgroundColor: ((h ?? 1) + (a ?? 1)) == 0
                        ? statsColor
                        : secondaryColor,
                    valueColor: AlwaysStoppedAnimation<Color>(statsColor),
                  ),
                ),
              ),
              kSizedBoxW5,
              Expanded(
                child: SizedBox(
                  height: 7.h,
                  child: LinearProgressIndicator(
                    value: ((h ?? 1) + (a ?? 1)) == 0
                        ? (a ?? 1) / 1
                        : (a ?? 1) / ((h ?? 1) + (a ?? 1)),
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
