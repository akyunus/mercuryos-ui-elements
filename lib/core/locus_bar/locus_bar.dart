import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class LocusBar extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final Color iconColor;
  final String placeHolder;
  final Color textColor;

  const LocusBar({
    Key? key,
    this.backgroundColor: DefaultColorTheme.locusBackgroundColor,
    this.height: 50,
    this.iconColor: DefaultColorTheme.locusSecondaryTextColor,
    this.placeHolder: 'What would you like to do?',
    this.textColor: DefaultColorTheme.locusTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      height: height,
      color: backgroundColor,
      child: Row(
        children: [
          Text(placeHolder, style: TextStyle(color: textColor)),
          Icon(Icons.mic, color: iconColor),
        ],
      ),
    );
  }
}
