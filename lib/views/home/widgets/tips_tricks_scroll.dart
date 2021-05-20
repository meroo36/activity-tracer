import 'package:activityTracer/core/init/navigation/navigation_service.dart';
import 'package:activityTracer/views/tipstricks/view/tips_tricks.dart';
import 'package:flutter/material.dart';

class TipsTricksScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TipsScreen(),
          ),
        ),
      },
      child: calculateImg(context),
    );
  }
}

Stack calculateImg(context) {
  return Stack(children: [
    Center(
      child: Container(
        height: 75,
        width: 220,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(36),
                child: Image.asset(
            'assets/homepictures/4.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ),
    Center(
      child: Container(
          // ignore: sort_child_properties_last
          child: Center(
            child: Text(
              'Tips&Tricks',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
              borderRadius: BorderRadius.circular(36))),
    ),
  ]);
}
