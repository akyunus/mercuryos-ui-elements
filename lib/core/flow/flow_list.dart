import 'package:flutter/material.dart';

List<String> flows = [
  'Coffe',
  'Inbox',
  'Feedback',
  'Coffe',
  'Inbox',
  'Feedback',
  'Coffe',
  'Inbox',
  'Feedback',
  'Coffe',
  'Inbox',
  'Feedback',
];

class FlowList extends StatelessWidget {
  const FlowList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('New Flow'),
          ),
          Expanded(
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListView.builder(
                    itemCount: flows.length,
                    itemBuilder: (context, i) {
                      String flow = flows[i];
                      return ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        onTap: () {
                          print('Listile! $i');
                        },
                        leading: Icon(
                          Icons.mail,
                          size: 16,
                        ),
                        title: Text(
                          flow,
                          style: TextStyle(fontSize: 14),
                        ),
                      );
                      /*Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: InkWell(
                          child: Wrap(
                            spacing: 20,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.mail,
                                size: 16,
                              ),
                              Text(
                                flow,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      );*/
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
