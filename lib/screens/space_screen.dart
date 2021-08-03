import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/core/space/space.dart';

class SpaceScreen extends StatelessWidget {
  const SpaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KiriScreen(
      child: Space(flows: []),
    );
  }
}
