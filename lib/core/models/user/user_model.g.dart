// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['id'] as String?,
    json['userTag'] as String,
    json['fullName'] as String,
    json['phoneNumber'] as String?,
    json['email'] as String,
  )..error = json['error'] as String?;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'userTag': instance.userTag,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'error': instance.error,
    };
