import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomPageSlider.dart';

class NewsScrollWidget extends StatelessWidget {
  final List<Container> pageList = [
    Container(
      child: InkWell(
        onTap: () {
          _urlAcma(
              'https://www.runnersworld.com/uk/news/a36373939/covid-19-running-boom/');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            image: const DecorationImage(
              image: AssetImage('assets/homepictures/1.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    ),
    Container(
      child: InkWell(
        onTap: () {
          _urlAcma(
              'https://www.runnersworld.com/uk/news/a36417389/womens-tour-de-france/');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            image: const DecorationImage(
              image: AssetImage('assets/homepictures/2.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    ),
    Container(
      child: InkWell(
        onTap: () {
          _urlAcma(
              'https://www.runnersworld.com/uk/news/a36382081/benefits-of-low-volume-hiit-study/');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            image: const DecorationImage(
              image: AssetImage('assets/homepictures/3.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
        heightFactor: 0.5,
        alignment: Alignment.bottomCenter,
        child: CustomSlider(pages: pageList));
  }
}

Future _urlAcma(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint('Gönderdiğiniz linki açamıyorum.');
  }
}
