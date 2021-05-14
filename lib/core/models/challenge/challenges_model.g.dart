// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengesModel _$ChallengesModelFromJson(Map<String, dynamic> json) {
  return ChallengesModel(
    challenges: (json['challenges'] as List<dynamic>?)
        ?.map((e) => ChallengeModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ChallengesModelToJson(ChallengesModel instance) =>
    <String, dynamic>{
      'challenges': instance.challenges,
    };
