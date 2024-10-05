import 'package:flutter/material.dart';

import '../../utils/color_const.dart';
import 'custom_text.dart';

class ShowHideText extends StatefulWidget {
  final String? text;
  const ShowHideText({super.key, this.text});

  @override
  State<ShowHideText> createState() => _ShowHideTextState();
}

class _ShowHideTextState extends State<ShowHideText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Total duration for show and hide
      vsync: this,
    )..repeat(
        reverse:
            true); // Repeat the animation in reverse to create the fade-in fade-out effect

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth animation effect
    );
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation, // Animate the opacity using the animation value
      child: CustomText(
        text: widget.text,
        color: secondaryColor,
      ),
    );
  }
}
