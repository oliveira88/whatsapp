import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/theme/theme.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String valueText = '120';
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Theme.of(context).primaryColor,
          ),
          child: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    title: Text(
                      'WhatsApp',
                      style: TextStyle(color: ColorTheme.GreyPrimary),
                    ),
                    floating: true,
                    pinned: true,
                    snap: true,
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: ColorTheme.GreyPrimary,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: ColorTheme.GreyPrimary,
                        ),
                        onPressed: () {},
                      ),
                    ],
                    bottom: TabBar(
                      tabs: const [
                        Tab(icon: Icon(Icons.camera_alt)),
                        Tab(child: Text('CHATS')),
                        Tab(text: 'STATUS'),
                        Tab(text: 'CALLS'),
                      ],
                      labelColor: ColorTheme.GreenPrimary,
                      indicatorColor: ColorTheme.GreenPrimary,
                      unselectedLabelColor: ColorTheme.GreyPrimary,
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: const [
                  Center(
                    child: Text('Camera'),
                  ),
                  Center(
                    child: Text('Chats'),
                  ),
                  Center(child: Text('Status')),
                  Center(child: Text('Calls')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
