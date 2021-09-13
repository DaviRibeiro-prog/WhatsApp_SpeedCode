import 'package:flutter/material.dart';

class ListTileStatsComponent extends StatelessWidget {
  const ListTileStatsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.tealAccent,
            width: 1.5,
          ),
        ),
        width: 60,
        height: 60,
        child: const CircleAvatar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.blue,
          backgroundImage: AssetImage('assets/images/photo.png'),
        ),
      ),
      title: Row(
        children: const [
          Text('Heitor'),
        ],
      ),
      subtitle: const Text("Today, 8:10 PM"),
    );
  }
}
