import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/module/mercury_module.dart';

/// [MercuryFlow] is a container for [MercuryModule]s
class MercuryFlow extends StatelessWidget {
  const MercuryFlow({Key? key, this.modules = const [], this.name = 'New Flow'})
      : super(key: key);

  final List<MercuryModule> modules;
  final String name;
  @override
  Widget build(BuildContext context) {
    //if (modules!.isEmpty) { modules.add(ModuleWelcome());}
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MercuryModule(
            child: Text('Module Content'),
          ),
          MercuryModule(
            height: 250,
            child: Text('Module Content'),
          ),
          MercuryModule(
            height: 150,
            child: Text('Module Content'),
          ),
          MercuryModule(
            height: 200,
            child: Text('Module Content'),
          ),
        ],
      ),
    );
  }
}
