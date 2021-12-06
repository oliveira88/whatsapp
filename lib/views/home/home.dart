import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/theme/theme.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(48),
                      child: Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        child: TabBar(
                          tabs: [
                            Tab(icon: Icon(Icons.camera_alt)),
                            Container(
                              child: Tab(
                                child: Row(
                                  children: [
                                    Text('CHATS'),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(6),
                                      margin: EdgeInsets.only(left: 6),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorTheme.GreyPrimary,
                                      ),
                                      child: Text(
                                        '10',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorTheme.BlackPrimary,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: Tab(text: 'STATUS')),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: Tab(text: 'CALLS')),
                          ],
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: ColorTheme.GreenPrimary,
                          indicatorColor: ColorTheme.GreenPrimary,
                          unselectedLabelColor: ColorTheme.GreyPrimary,
                        ),
                      ),
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
