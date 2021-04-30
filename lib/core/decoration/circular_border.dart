import 'package:flutter/material.dart';
import '../core_shelf.dart';

class CircularBorder {
  BoxDecoration inputBorder(BuildContext context) {
    return BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
