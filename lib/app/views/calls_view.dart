import 'package:flutter/material.dart';
import 'package:whatsapp_project/app/components/calls_component.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Color(0xff14242c)),
        child: ListView(
          children: const [
            ListTileCallsComponent(icon: Icon(Icons.call_made, color: Colors.green)),
            Divider(color: Colors.white12),
            ListTileCallsComponent(icon: Icon(Icons.call_received, color: Colors.red)),
            Divider(color: Colors.white12),
            ListTileCallsComponent(icon: Icon(Icons.call_made, color: Colors.green)),
            Divider(color: Colors.white12),
            ListTileCallsComponent(icon: Icon(Icons.call_received, color: Colors.red)),
            Divider(color: Colors.white12)
          ],
        ));
  }
}
