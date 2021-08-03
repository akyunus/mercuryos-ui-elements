import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// [KiriScreen] is screen template based on Scaffold and Stack
/// gets children directy to the the Stack
///
class KiriScreen extends StatelessWidget {
  final Widget child;
  const KiriScreen({Key? key, this.child: const Text('')}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: kiriDecorationBackgroundImage,
        ),
        child,
      ]),
    );
  }
}

const kiriDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.00, 0.75, 1.00],
    colors: [
      Color(0xFFCACCD1),
      Color(0xFFC8BCBE),
      Color(0xFFA4A4A4),
    ],
  ),
);

const kiriDecorationBackgroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/backgrounds/BlankSlateMercuryOSBkg.jpg"),
    fit: BoxFit.cover,
  ),
);

const kiriDecorationSolidColor = BoxDecoration(
  color: Color(0xFFDDDDDD),
);
