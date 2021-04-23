import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  late String? id;
  late String fullName;
  late String userTag;
  late String? phoneNumber;
  late String email;
  late String? error;

  UserModel(this.id, this.fullName, this.userTag, this.phoneNumber, this.email);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel.withError(this.error);
}

// flutter pub run build_runner build
