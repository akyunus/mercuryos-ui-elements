import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class AddModuleButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AddModuleButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: new SizedBox(
        child: FloatingActionButton(
          backgroundColor: DefaultColorTheme.moduleButtonColor,
          child: Icon(
            Icons.add,
            color: DefaultColorTheme.moduleTextColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
