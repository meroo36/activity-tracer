import 'package:flutter/material.dart';

import '../../core/core_shelf.dart';
import '../widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'home_entry_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white.withOpacity(.96),
        buttonBackgroundColor: Colors.white.withOpacity(.92),
        height: context.height * 7.8,
        items: <Widget>[
          getIcon(pageIndex == 0 ? Icons.home : Icons.home_outlined, 0),
          getIcon(
            pageIndex == 1 ? Icons.notifications : Icons.notifications_outlined,
            1,
          ),
          getIcon(pageIndex == 2 ? Icons.person : Icons.person_outline, 2),
        ],
        onTap: changeIndex,
      ),
      body: SafeArea(child: getBody()),
    );
  }

  Widget getIcon(IconData icon, int index) {
    return Icon(
      icon,
      size: pageIndex == index ? context.width * 8.2 : context.width * 7.9,
      color: pageIndex == index ? context.primary : Colors.black54,
    );
  }

  Widget getBody() {
    print(pageIndex);
    if (pageIndex == 0) {
      return HomeEntryBody();
    } else if (pageIndex == 1) {
      return Center(
        child: Text('test'),
      );
    } else {
      return Center(
        child: Text('test2'),
      );
    }
  }

  Future<void> changeIndex(int index) async {
    setState(() {
      pageIndex = index;
    });
  }
}
