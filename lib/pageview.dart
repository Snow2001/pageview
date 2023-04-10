import 'package:flutter/material.dart';
class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  late PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.account_box), text: 'Account',),
                Tab(icon: Icon(Icons.settings), text: 'Settings',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Home'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('Account'),
                ),
              ),
              Container(
                color: Colors.grey,
                child: Center(
                  child: Text('Settings'),
                ),
              ),
            ],
          ),
        )
    );
  }
}
