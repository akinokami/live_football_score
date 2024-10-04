import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.fourRotatingDots(
      color: secondaryColor,
      size: 30.sp,
    );
  }
}
