import 'package:flutter/material.dart';
import '../core_shelf.dart';

class TextFormDeco {
  InputDecoration loginDeco(
      BuildContext context, String hintText, Widget prefixIcon,
      [Widget? suffixIcon]) {
    return InputDecoration(
      errorMaxLines: 1,
      prefixIconConstraints: context.iconBoxConstraints,
      suffixIconConstraints: context.iconBoxConstraints,
      enabledBorder: OutlineInputBorder(
        borderSide: context.defaultBlack,
        borderRadius: context.mediumCircular,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: context.defaultPrimary,
        borderRadius: context.mediumCircular,
      ),
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  InputDecoration borderlessInput() {
    return InputDecoration(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    );
  }

  BoxDecoration inputFilledContainer() {
    return BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(16),
    );
  }

  BoxDecoration pinDeco(BuildContext context) {
    return BoxDecoration(
      border: context.defaultBlackBoxBorder,
      borderRadius: context.mediumCircular,
      color: context.primary.withOpacity(.6),
    );
  }

  // InputDecoration searchDeco(BuildContext context) {
  //   return InputDecoration(
  //     contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
  //     prefix: Container(
  //       //margin: EdgeInsets.all(10),
  //       child: Icon(Icons.search,size: 30,),
  //     ),
  //     border: OutlineInputBorder(
  //       borderSide: context.defaultBlack,
  //       borderRadius: context.mediumCircular,
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(16),
  //       ),
  //       borderSide: BorderSide(color: Colors.black.withAlpha(99), width: 2.0),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(32),
  //       ),
  //       borderSide: BorderSide(color: Colors.black.withAlpha(99), width: 2.0),
  //     ),
  //   );
  // }
}
