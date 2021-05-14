import 'package:json_annotation/json_annotation.dart';

part 'challenge_model.g.dart';

@JsonSerializable()
class ChallengeModel {
  late String? id;
  late String name;
  late String image;
  late int? target;
  late dynamic expireDate;
  late String? error;

  ChallengeModel(
    this.id,
    this.name,
    this.image,
    this.target,
    this.expireDate,
  );
  factory ChallengeModel.fromJson(Map<String, dynamic> json) =>
      _$ChallengeModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChallengeModelToJson(this);

  ChallengeModel.withError(this.error);
}

// flutter pub run build_runner build
