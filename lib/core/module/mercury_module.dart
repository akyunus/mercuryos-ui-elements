import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/locus_bar/locus_bar.dart';

class MercuryModule extends StatelessWidget {
  final locusBar;
  final child;
  final double height;
  const MercuryModule({
    Key? key,
    this.locusBar,
    this.child,
    this.height: 300,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.4,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: DefaultColorTheme.moduleBackgroundColor,
          border: Border.all(
            color: Color(0xffFFFFFF),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          LocusBar(),
          this.child ?? Container(),
        ],
      ),
    );
  }
}
