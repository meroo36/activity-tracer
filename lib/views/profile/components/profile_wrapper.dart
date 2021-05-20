import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:activityTracer/core/provider/activity_data.dart';
import 'package:activityTracer/views/profile/components/profile_photo.dart';
import 'package:activityTracer/views/profile/components/top_bar.dart';
import 'package:activityTracer/views/profile/components/user_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/core_shelf.dart';

class ProfileWrapper extends StatelessWidget {
  final String? imageUrl;

  const ProfileWrapper({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              decoration: CircularBorder().appBar(context),
              width: context.width * 100,
              height: context.height * 25,
            ),
            ProfilePhotoWidget(
              imageUrl: imageUrl,
            ),
            Container(
              padding: context.mediumPadding,
              child: Consumer<ActivityDataModel>(
                builder: (context, model, child) {
                  return TopBar(model.step);
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: context.mediumPadding,
            child: Align(
              alignment: Alignment(-2, -0.75),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Weekly Steps'),
                    UserChart(),
                    Text('Achievements'),
                    Container(
                      height: context.height * 20,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: context.lowPadding,
                            width: context.height * 20,
                            decoration: CircularBorder().inputBorder(context),
                            child: Icon(
                              Icons.lock,
                              size: 100,
                            ),
                          );
                        },
                      ),
                      // child: ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   physics: BouncingScrollPhysics(),
                      //   children: [
                      //     Container(
                      //       margin: context.lowPadding,
                      //       width: context.height * 20,
                      //       decoration: CircularBorder().inputBorder(context),
                      //     ),
                      //     Container(
                      //       margin: context.lowPadding,
                      //       width: context.height * 20,
                      //       decoration: CircularBorder().inputBorder(context),
                      //     ),
                      //     Container(
                      //       margin: context.lowPadding,
                      //       width: context.height * 20,
                      //       decoration: CircularBorder().inputBorder(context),
                      //       child: ,
                      //     ),
                      //     Container(
                      //       margin: context.lowPadding,
                      //       width: context.height * 20,
                      //       decoration: CircularBorder().inputBorder(context),
                      //     ),
                      //     Container(
                      //       margin: context.lowPadding,
                      //       width: context.height * 20,
                      //       decoration: CircularBorder().inputBorder(context),
                      //     ),
                      //   ],
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
