import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/core/locus_bar/locus_bar.dart';
import 'package:mercuryos_ui_elements/core/space/space_timeline_card.dart';

class ActivityTimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KiriScreen(
      child: Column(
        children: [
          LocusBar(
            backgroundColor: DefaultColorTheme.locusBackgroundColordark,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                  itemCount: activities.length,
                  itemBuilder: (context, i) {
                    return _activitiesRowBuilder(context, activities[i]);
                  }),
            ),
          ),
          TextButton(
            child: Text('Back < '),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget _activitiesRowBuilder(
      BuildContext context, ActivityDTO dailyActivity) {
    //final dailyActivity = activities[i];
    return Container(
      height: MediaQuery.of(context).size.width * 0.28,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dailyActivity.day,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dailyActivity.activities.length,
                itemBuilder: (context, i) {
                  return _spaceCardBuilder(
                      context, dailyActivity.activities[i]);
                }),
          ),
        ],
      ),
    );
  }

  Widget _spaceCardBuilder(BuildContext context, SpaceCardDTO item) {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SpaceTimelineCard(
          lastUpdated: item.lastUpdated,
          spaceName: item.spaceName,
          subInfo: item.subInfo,
          moduleIcons: item.moduleIcons,
        ),
      ),
    );
  }
}

/*Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: SpaceTimelineCard(
                    lastUpdated: 'Updated just now',
                    spaceName: 'Review Inbox',
                    subInfo: '7 items from Mail, Messenger and Twitter',
                    moduleIcons: [
                      Icon(Icons.mail_outline),
                      Icon(Icons.messenger_rounded),
                      Icon(Icons.flaky_sharp),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Yesterday',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    final item = yesterdaySpaces[i];
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: SpaceTimelineCard(
                        lastUpdated: item.lastUpdated,
                        spaceName: item.spaceName,
                        subInfo: item.subInfo,
                        moduleIcons: item.moduleIcons,
                      ),
                    );
                  },
                  separatorBuilder: (context, i) => SizedBox(
                    width: 10,
                  ),
                  itemCount: yesterdaySpaces.length,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  //height: 300,
                  decoration: BoxDecoration(
                      color: DefaultColorTheme.spaceCardBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                TextButton(
                  child: Text('Back!'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),*/
class SpaceCardDTO {
  final String spaceName;
  final String lastUpdated;
  final List<Icon> moduleIcons;
  final String subInfo;
  final String thumbnailImage;
  SpaceCardDTO({
    required this.lastUpdated,
    required this.moduleIcons,
    required this.spaceName,
    required this.subInfo,
    required this.thumbnailImage,
  });
}

class ActivityDTO {
  final String day;
  final List<SpaceCardDTO> activities;
  const ActivityDTO({
    required this.activities,
    required this.day,
  });
}

List<SpaceCardDTO> yesterdaySpaces = [
  SpaceCardDTO(
    lastUpdated: 'Yesterday 20:25',
    moduleIcons: [Icon(Icons.movie)],
    spaceName: 'Watch Veep',
    subInfo: 'Video feed from HBO',
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
  SpaceCardDTO(
    lastUpdated: 'Yesterday 20:25',
    moduleIcons: [Icon(Icons.movie)],
    spaceName: 'Watch Veep',
    subInfo: 'Video feed from HBO',
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
];

List<SpaceCardDTO> todaySpaces = [
  SpaceCardDTO(
    lastUpdated: 'Updated just now',
    spaceName: 'Review Inbox',
    subInfo: '7 items from Mail, Messenger and Twitter',
    moduleIcons: [
      Icon(Icons.mail_outline),
      Icon(Icons.messenger_rounded),
      Icon(Icons.flaky_sharp),
    ],
    thumbnailImage: 'assets/ui-designs/module_map.png',
  )
];

List<SpaceCardDTO> moreSpaces = [
  SpaceCardDTO(
    lastUpdated: 'Yesterday 20:25',
    moduleIcons: [Icon(Icons.movie)],
    spaceName: 'Watch Veep',
    subInfo: 'Video feed from HBO',
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
  SpaceCardDTO(
    lastUpdated: 'Updated just now',
    spaceName: 'Review Inbox',
    subInfo: '7 items from Mail, Messenger and Twitter',
    moduleIcons: [
      Icon(Icons.mail_outline),
      Icon(Icons.messenger_rounded),
      Icon(Icons.flaky_sharp),
    ],
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
  SpaceCardDTO(
    lastUpdated: 'Yesterday 20:25',
    moduleIcons: [Icon(Icons.movie)],
    spaceName: 'Watch Veep',
    subInfo: 'Video feed from HBO',
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
  SpaceCardDTO(
    lastUpdated: 'Yesterday 20:25',
    moduleIcons: [Icon(Icons.movie)],
    spaceName: 'Watch Veep',
    subInfo: 'Video feed from HBO',
    thumbnailImage: 'assets/ui-designs/module_map.png',
  ),
];

List<ActivityDTO> activities = [
  ActivityDTO(activities: todaySpaces, day: 'Today'),
  ActivityDTO(activities: yesterdaySpaces, day: 'Yesterday'),
  ActivityDTO(activities: todaySpaces, day: '13 May 2021'),
  ActivityDTO(activities: todaySpaces, day: '12 May 2021'),
  ActivityDTO(activities: moreSpaces, day: 'Last Month'),
];
