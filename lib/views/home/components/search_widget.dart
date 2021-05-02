import 'package:flutter/material.dart';

import '../../../core/core_shelf.dart';
import '../../../core/decoration/circular_border.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CircularBorder().inputBorder(context),
      child: Row(
        children: [
          Icon(
            Icons.search_outlined,
            color: context.primary,
            size: context.width * 5.4,
          ),
          SizedBox(width: context.width * 1.2),
          //TextField(decoration: TextFormDeco().pinDeco(context),)
        ],
      ),
    );
  }
}
