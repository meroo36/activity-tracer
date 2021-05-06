// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['id'] as String?,
    json['fullname'] as String,
    json['imageUrl'] as String,
    json['email'] as String,
  )..error = json['error'] as String?;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'imageUrl': instance.imageUrl,
      'email': instance.email,
      'error': instance.error,
    };
