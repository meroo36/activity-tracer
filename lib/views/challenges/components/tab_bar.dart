import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    shadowColor: null,
    title: Text('Challenges'),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(32),
          bottomLeft: Radius.circular(32),
        ),
        gradient: LinearGradient(
          colors: [Colors.black87, context.primary],
          begin: Alignment(1, -1),
          end: Alignment(1, 1),
        ),
      ),
    ),
    shape: CircularBorder().appBarRounded(context),
    bottom: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.white,
      indicatorWeight: 5,
      unselectedLabelStyle: TextStyle(color: Colors.teal),
      tabs: [
        Tab(
          child: Text('Global Challenges'),
        ),
        Tab(
          child: Text('My Challenges'),
        )
      ],
    ),
  );
}
