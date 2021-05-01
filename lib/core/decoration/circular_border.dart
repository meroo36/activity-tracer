import 'package:flutter/material.dart';
import '../core_shelf.dart';

class CircularBorder {
  BoxDecoration inputBorder(BuildContext context) {
    return BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(16),
    );
  }

  BoxDecoration appBar(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
      ),
      gradient: LinearGradient(
        begin: Alignment(1, -1),
        end: Alignment(1, 1),
        colors: [
          Colors.black87,
          context.primary,
        ],
      ),
    );
  }

  RoundedRectangleBorder appBarRounded(BuildContext) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
      ),
    );
  }
}
