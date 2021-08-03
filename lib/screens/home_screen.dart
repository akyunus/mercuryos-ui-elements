import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/screens/activity_timeline_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KiriScreen(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning, Jason',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'What would you like to do?',
                  style: TextStyle(
                    fontSize: 40,
                    color: DefaultColorTheme.locusSecondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomLeft,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ActivityTimelineScreen(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                //width: 30,
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  //textBaseline: TextBaseline.ideographic,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: DefaultColorTheme.secondaryTextColor,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.arrow_downward,
                              color: DefaultColorTheme.secondaryTextColor,
                              //size: 25,
                            ),
                          ),
                          TextSpan(
                            text: 'Activity Timeline',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
