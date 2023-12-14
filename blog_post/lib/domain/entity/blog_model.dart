import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';

part 'blog_model.g.dart';

@freezed
class BlogModel with _$BlogModel {
  const factory BlogModel({
    required String title,
    required String imageUrl,
    required String author,
    required String content,
    required String deeplinkUrl,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}
