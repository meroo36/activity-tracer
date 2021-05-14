import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:activityTracer/core/services/api/challenge.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './components/tab_bar.dart';
import '../../core/core_shelf.dart';

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
                      itemCount: snapshot.data!.challenges!.length,
                      itemBuilder: (context, cnt) {
                        return Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: snapshot.data!.challenges![cnt].image,
                              imageBuilder: (context, imageProvider) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: context.width * 4,
                                    vertical: context.width * 4,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32)),
                                  ),
                                  height: context.height * 30,
                                  width: double.infinity,
                                );
                              },
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: context.width * 4,
                                horizontal: context.width * 4,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black87,
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)),
                              ),
                              height: context.height * 30,
                              width: double.infinity,
                            ),
                          ],
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
