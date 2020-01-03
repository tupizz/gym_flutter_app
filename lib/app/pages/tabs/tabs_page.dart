import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

import './components/feed/feed.dart';
import './components/favorites/favorites_page.dart';
import './components/populars/populars_page.dart';
import './components/articles/articles_page.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController controller;
  bool isSearchActive = false;

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
            title: AnimatedSwitcher(
              child: isSearchActive
                  ? TextField(
                      decoration: InputDecoration(
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 16, right: 8),
                          hintText: 'Enter a search term'),
                    )
                  : Text('Home'),
              duration: Duration(milliseconds: 300),
              layoutBuilder: (Widget currentChild, List<Widget> previousChildren) {
                return Stack(
                  children: <Widget>[
                    ...previousChildren,
                    if (currentChild != null) currentChild,
                  ],
                  alignment: Alignment.centerLeft,
                );
              }
            ),
            backgroundColorStart: Theme.of(context).primaryColor,
            backgroundColorEnd: Theme.of(context).primaryColorDark,
            centerTitle: false,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    isSearchActive = isSearchActive == true ? false : true;
                  });
                },
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
          ArticlesPage()
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
