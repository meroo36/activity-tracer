import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  late String? id;
  late String fullname;
  late String imageUrl;
  late String email;
  late String? error;

  UserModel(
    this.id,
    this.fullname,
    this.imageUrl,
    this.email,
  );
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel.withError(this.error);
}

// flutter pub run build_runner build
