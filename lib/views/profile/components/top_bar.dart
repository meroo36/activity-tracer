import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class TopBar extends StatelessWidget {
  final int step;
  TopBar(this.step);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: context.height * 10),
            child: Column(
              children: [
                Text(
                  'Calories',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '~${(step * 0.04).toInt()}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Steps',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '$step',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: context.height * 10),
            child: Column(
              children: [
                Text(
                  'Distance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [Shadow(color: Colors.black, blurRadius: 10)]),
                ),
                Text(
                  '~${(step * 0.0008).toStringAsFixed(1)} KM',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
