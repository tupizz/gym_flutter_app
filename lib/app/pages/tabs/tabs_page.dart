import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

import './components/feed/feed.dart';
import './components/favorites/favorites_page.dart';
import './components/populars/populars_page.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.7),
                offset: Offset(0, 4.0),
                blurRadius: 20.0,
              )
            ],
          ),
          child: GradientAppBar(
            title: Text("Home"),
            backgroundColorStart: Theme.of(context).primaryColor,
            backgroundColorEnd: Theme.of(context).primaryColorDark,
            centerTitle: false,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              controller: controller,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Colors.white,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "Workouts",
                ),
                Tab(
                  text: "Favorites",
                ),
                Tab(
                  text: "Populars",
                ),
                Tab(
                  text: "Articles",
                ),
              ],
              onTap: (int val) {},
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          FeedPage(),
          FavoritesPage(),
          PopularsPage(),
          OtherTabPage(
            title: "Articles",
          )
        ],
      ),
    );
  }
}

class OtherTabPage extends StatelessWidget {
  final String title;
  const OtherTabPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(title),
      ),
    );
  }
}
