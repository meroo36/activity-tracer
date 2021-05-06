import 'package:activityTracer/core/services/api/user.dart';
import 'package:activityTracer/views/profile/components/achievement_card.dart';
import 'package:activityTracer/views/profile/components/profile_wrapper.dart';
import 'package:activityTracer/views/profile/components/user_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/core_shelf.dart';
import '../../core/decoration/circular_border.dart';
import 'components/profile_photo.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserModel>(
      future: UserApiService().getUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          print(snapshot.data!.imageUrl);
          return ProfileWrapper(
            imageUrl: snapshot.data!.imageUrl,
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
