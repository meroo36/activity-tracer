import 'package:activityTracer/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

class ImageBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          {NavigationService.instance.navigateToPageClear(path: '/activity')},
      child: calculateImg(context),
    );
  }
}

ClipRRect calculateImg(context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(36),
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: Image.asset(
        'assets/logo/calculate.jpg',
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
