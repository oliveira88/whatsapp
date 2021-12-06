import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final List<Widget> _tabs = const [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('WhatsApp'),
                floating: true,
                pinned: true,
                snap: true,
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
                bottom: TabBar(tabs: _tabs),
              )
            ];
          },
          body: TabBarView(
            children: const [
              Center(
                child: Text(
                  'Camera',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(child: Text('Status')),
              Center(child: Text('Calls'))
            ],
          ),
        ),
      ),
    );
  }
}
