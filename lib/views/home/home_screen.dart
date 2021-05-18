import 'package:activityTracer/views/challenges/challenges_screen.dart';
import 'package:flutter/material.dart';

import '../../core/core_shelf.dart';
import '../profile/profile_screen.dart';
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
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white.withOpacity(.96),
        buttonBackgroundColor: Colors.white.withOpacity(.92),
        height: context.height * 7.8,
        items: <Widget>[
          getIcon(pageIndex == 0 ? Icons.home : Icons.home_outlined, 0),
          getIcon(
            pageIndex == 1 ? Icons.leaderboard : Icons.leaderboard_outlined,
            1,
          ),
          getIcon(
              pageIndex == 2 ? Icons.emoji_events : Icons.emoji_events_outlined,
              2),
          getIcon(pageIndex == 3 ? Icons.person : Icons.person_outline, 3),
        ],
        onTap: changeIndex,
      ),
      body: getBody(),
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
    } else if (pageIndex == 3) {
      return Center(
        child: ProfileScreen(),
      );
    } else {
      return Center(
        child: ChallengesScreen(),
      );
    }
  }

  Future<void> changeIndex(int index) async {
    setState(() {
      pageIndex = index;
    });
  }
}
