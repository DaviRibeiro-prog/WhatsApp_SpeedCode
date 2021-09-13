import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_project/app/components/status_component.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff14242c)),
      child: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              child: CircleAvatar(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 12.0,
                    child: FaIcon(FontAwesomeIcons.plus, size: 15, color: Colors.white),
                  ),
                ),
                radius: 38.0,
                backgroundImage: AssetImage('assets/images/photo.png'),
              ),
            ),
            title: Row(
              children: const [
                Text('My Stats'),
              ],
            ),
            subtitle: const Text("Tap to add status update"),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Recent Updates'),
          ),
          const ListTileStatsComponent(),
          const Divider(color: Colors.white12),
          const ListTileStatsComponent(),
          const Divider(color: Colors.white12),
          const ListTileStatsComponent(),
          const Divider(color: Colors.white12),
          const ListTileStatsComponent(),
          const Divider(color: Colors.white12),
        ],
      ),
    );
  }
}
