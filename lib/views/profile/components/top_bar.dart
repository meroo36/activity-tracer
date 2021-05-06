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
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '~${(step * 0.04).toInt()}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Steps',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '$step',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: context.height * 10),
            child: Column(
              children: [
                Text(
                  'Distance',
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [Shadow(color: Colors.black, blurRadius: 10)]),
                ),
                Text(
                  '~${(step * 0.0008).toStringAsFixed(1)} KM',
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
