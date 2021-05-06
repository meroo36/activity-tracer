import 'package:flutter/material.dart';
import '../../core/core_shelf.dart';

import './widgets/home_widgets_shelf.dart';
import './widgets/search_bar.dart';
import 'widgets/tips_tricks_scroll.dart';

class HomeEntryBody extends StatelessWidget {
  const HomeEntryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: context.mediumPadding,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchRow(controller: controller),
          SizedBox(height: context.height * 2),
          ImageBoxWidget(),
          SizedBox(height: context.height * 2),
          newsText(),
          SizedBox(height: context.height * 2),
          Expanded(flex: 2, child: NewsScrollWidget()),
          SizedBox(height: context.height * 4),
          Expanded(flex: 1, child: TipsTricksScrollWidget()),
        ],
      ),
    );
  }
}

Row newsText() {
  return Row(
    children: [
      Text('News', textAlign: TextAlign.start),
    ],
  );
}
