import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  const FloatingActionButtonComponent({Key? key, required this.image}) : super(key: key);
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff33ecbe),
      child: image,
      onPressed: () {},
    );
  }
}
