import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/flow/flow_list.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/core/module/mercury_module.dart';
import 'package:mercuryos_ui_elements/core/space/space.dart';

class SpaceScreen extends StatelessWidget {
  const SpaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftPadding = MediaQuery.of(context).size.width * 0.5 - 150;
    return KiriScreen(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Review Inbox',
                style: TextStyle(
                    fontSize: 40,
                    color: DefaultColorTheme.locusSecondaryTextColor),
              ),
            ),
          ),
          Align(
            child: FlowList(),
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(leftPadding, 50, 0, 0),
            child: Center(
              child: SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MercuryModule(
                      child: Text('ulmealmu'),
                    ),
                    MercuryModule(
                      child: Text('ulmealmu'),
                    ),
                    MercuryModule(
                      child: Text('ulmealmu'),
                    ),
                    MercuryModule(
                      child: Text('ulmealmu'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: TextButton(
              child: Text('Back < '),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
