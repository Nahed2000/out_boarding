import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  OutBoardingIndicator({
    Key? key,
    this.marginEnd = 0,
    required this.selectedIndex,
  }) : super(key: key);
  final double marginEnd;

  final bool selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 17,
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: selectedIndex?const Color(0xFF6A90F2): Colors.grey,
      ),
    );
  }
}
