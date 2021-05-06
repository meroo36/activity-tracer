import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';

import '../../../../core/core_shelf.dart';

class ActivityButton extends StatelessWidget {
  ActivityButton({required this.onTapFunc});

  final VoidCallback onTapFunc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => context.accent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: context.accent),
          ),
        ),
      ),
      // ignore: unnecessary_lambdas
      onPressed: onTapFunc,
      child: Container(
        height: 46,
        width: double.infinity,
        child: Center(
          child: Text(
            'CALCULATE',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
