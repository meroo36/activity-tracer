import 'package:activityTracer/core/decoration/box_decoration.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class SearchRow extends StatefulWidget {
  final TextEditingController? controller;
  SearchRow({Key? key, this.controller}) : super(key: key);

  @override
  _SearchRowState createState() => _SearchRowState();
}

class _SearchRowState extends State<SearchRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDeco().searchBarDeco(context),
      height: context.height * 5,
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: context.width * 5.4,
          ),
          SizedBox(width: context.width * 1.2),
          Expanded(child: searchTextField(context, widget.controller!))
        ],
      ),
    );
  }
}

TextFormField searchTextField(
    BuildContext context, TextEditingController controller) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: 'Search for profile',
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
    controller: controller,
    onEditingComplete: () {},
    onChanged: (val) => {},
    showCursor: true,
    cursorColor: Colors.orange[400],
    textAlignVertical: TextAlignVertical.center,
    style: Theme.of(context).textTheme.bodyText1,
  );
}
