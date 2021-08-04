import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/adaptive_helpers/adaptive_insets.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class LocusBar extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final Color iconColor;
  final String placeHolder;
  final Color textColor;
  final Icon moduleIcon;

  const LocusBar({
    Key? key,
    this.backgroundColor: DefaultColorTheme.locusBackgroundColor,
    this.height: 50,
    this.iconColor: DefaultColorTheme.locusSecondaryTextColor,
    this.moduleIcon: const Icon(Icons.grid_view_rounded),
    this.placeHolder: 'What would you like to do? ',
    this.textColor: DefaultColorTheme.locusTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AdaptiveInsets.large,
          AdaptiveInsets.medium, AdaptiveInsets.medium, AdaptiveInsets.medium),
      height: height,
      color: backgroundColor,
      child: Row(
        children: [
          moduleIcon,
          SizedBox(width: AdaptiveInsets.small),
          Expanded(
              child: Text(placeHolder, style: TextStyle(color: textColor))),
          Icon(Icons.mic, color: iconColor),
        ],
      ),
    );
  }
}
