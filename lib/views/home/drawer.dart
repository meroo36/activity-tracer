import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/core_shelf.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(1, -1),
                        end: Alignment(1, 1),
                        colors: [
                          Colors.black87,
                          context.primary,
                        ],
                      ),
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/logo/logo1.png',
                              width: 80, height: 80),
                          Text(
                            '\n  5. ELEKTRİK, ELEKTRONİK VE BİLGİSAYAR \n         MÜHENDİSLİĞİ PROJE YARIŞMASI',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'CENGA',
                    ),
                    onTap: () {
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    title: Text(
                      'Github',
                      textAlign: TextAlign.left,
                    ),
                    onTap: () {
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),ListTile(
                    title: Text(
                      'PROCENGA',
                      textAlign: TextAlign.left,
                    ),
                    onTap: () {
                    },
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future _urlAcma(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint('Gönderdiğiniz linki açamıyorum.');
  }
}
