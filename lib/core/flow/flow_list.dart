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
                    leading: Icon(Icons.mail),
                    title: Text(flow),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
