import 'package:flutter/material.dart';

import '../../activity/view/activity.dart';

class ImageBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityScreen(),
          ),
        ),
      },
      child: calculateImg(context),
    );
  }
}

ClipRRect calculateImg(context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(36),
    child: Stack(children: [
      SizedBox(
        height: 200,
        width: double.infinity,
        child: Image.asset(
          'assets/logo/hesap.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
            // ignore: sort_child_properties_last
            child: Center(
              child: Text(
                'Activity Calculator',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            height: 75,
            width: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black38,
                    Colors.black,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                ))),
      )
    ]),
  );
}
