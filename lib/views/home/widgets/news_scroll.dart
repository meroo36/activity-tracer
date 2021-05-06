import 'package:flutter/material.dart';

class NewsScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: Align(
        heightFactor: 0.5,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              'assets/logo/calculate.jpg',
              fit: BoxFit.fitWidth,
            );
          },
        ),
      ),
    );
  }
}
