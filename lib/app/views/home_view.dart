import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_project/app/components/floating_action_button_component.dart';
import 'package:whatsapp_project/app/views/calls_view.dart';
import 'package:whatsapp_project/app/views/chat_view.dart';
import 'package:whatsapp_project/app/views/status_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  Future<void> initTabController() async {
    tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    tabController.addListener(_handleTabIndex);
  }

  @override
  void initState() {
    super.initState();
    initTabController();
  }

  @override
  void dispose() {
    tabController.removeListener(_handleTabIndex);
    tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff232d36),
        title: const Text('WhatsApp'),
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Icon(Icons.menu),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon: FaIcon(FontAwesomeIcons.camera)),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Text('Camera Page', style: TextStyle(fontSize: 50))),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: bottomButtons(),
    );
  }

  bottomButtons() {
    if (tabController.index == 1) {
      return const FloatingActionButtonComponent(image: Icon(Icons.message));
    } else if (tabController.index == 2) {
      return const FloatingActionButtonComponent(image: FaIcon(FontAwesomeIcons.camera));
    } else if (tabController.index == 3) {
      return const FloatingActionButtonComponent(image: Icon(Icons.settings_phone));
    }
  }
}
