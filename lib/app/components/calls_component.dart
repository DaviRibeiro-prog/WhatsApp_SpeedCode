import 'package:flutter/material.dart';

class ListTileCallsComponent extends StatelessWidget {
  const ListTileCallsComponent({Key? key, required this.icon}) : super(key: key);
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SizedBox(
        width: 60,
        height: 60,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/photo.png'),
        ),
      ),
      title: const Text('Heitor'),
      subtitle: Row(children: [
        Padding(padding: const EdgeInsets.only(top: 5, right: 5), child: icon),
        const Text('Today, 10:14 AM'),
      ]),
      trailing: const Icon(Icons.call),
    );
  }
}
