import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:activityTracer/core/services/api/challenge.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './components/tab_bar.dart';
import '../../core/core_shelf.dart';
import './components/challenge_card.dart';

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context),
        body: TabBarView(
          children: [
            FutureBuilder(
                future: ChallengeApi().get(),
                builder: (context, AsyncSnapshot<ChallengesModel?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: snapshot.data!.challenges!.length,
                      itemBuilder: (context, cnt) {
                        final snapshotObj = snapshot.data!.challenges![cnt];
                        final expireDate =
                            DateTime.parse(snapshotObj.expireDate);
                        final now = DateTime.now();
                        final difference = expireDate.difference(now).inDays;
                        return ChallengeCard(
                          difference: difference,
                          target: snapshotObj.target!,
                          challengeName: snapshotObj.name,
                          imageUrl: snapshotObj.image,
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            Center(
              child: Text('Soon..'),
            ),
          ],
        ),
      ),
    );
  }
}
