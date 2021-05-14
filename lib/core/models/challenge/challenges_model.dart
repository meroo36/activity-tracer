import 'package:activityTracer/core/models/challenge/challenge_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'challenges_model.g.dart';

@JsonSerializable()
class ChallengesModel {
  List<ChallengeModel>? challenges;
  late String? error;

  ChallengesModel({this.challenges});

  factory ChallengesModel.fromJson(Map<String, dynamic> json) =>
      _$ChallengesModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChallengesModelToJson(this);

  ChallengesModel.withError(this.error);
}
