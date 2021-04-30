import 'package:activityTracer/core/core_shelf.dart';
import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            children: [
              Container(
                decoration: CircularBorder().inputBorder(context),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      color: context.primary,
                      size: context.width * 5.4,
                    ),
                    SizedBox(width: context.width * 1.2),
                    TextField(decoration: TextFormDeco().pinDeco(context),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
