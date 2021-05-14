// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeModel _$ChallengeModelFromJson(Map<String, dynamic> json) {
  return ChallengeModel(
    json['id'] as String?,
    json['name'] as String,
    json['image'] as String,
    json['target'] as int,
  )..error = json['error'] as String?;
}

Map<String, dynamic> _$ChallengeModelToJson(ChallengeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'target': instance.target,
      'error': instance.error,
    };
