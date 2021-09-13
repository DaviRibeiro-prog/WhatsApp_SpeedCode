import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  const UserComponent({Key? key}) : super(key: key);

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
      title: Row(
        children: const [
          Text('Heitor'),
          Spacer(),
          Text('18:07'),
        ],
      ),
      subtitle: const Text("Hey! What's up?"),
    );
  }
}
