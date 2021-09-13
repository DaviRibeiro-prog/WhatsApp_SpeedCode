import 'package:flutter/material.dart';
import 'package:whatsapp_project/app/components/chat_component.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff14242c)),
      child: ListView.separated(
          itemBuilder: (_, __) => const UserComponent(),
          separatorBuilder: (_, __) => const Divider(color: Colors.white12),
          itemCount: 50),
    );
  }
}
