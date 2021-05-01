import 'components/search_widget.dart';
import 'package:flutter/material.dart';
import '../../core/core_shelf.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.mediumPadding,
          child: Column(
            children: [SearchWidget()],
          ),
        ),
      ),
    );
  }
}
