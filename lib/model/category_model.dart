// ignore_for_file: invalid_annotation_target

import 'package:core/api/api_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../api/apis.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'category_name') String? categoryName,
    String? images,
    @JsonKey(name: 'table_name') String? tableName,
    @JsonKey(name: 'last_updated_time') DateTime? lastUpdatedTime,
    @JsonKey(name: 'last_updated_by') String? lastUpdatedBy,
    DateTime? createdTime,
    String? createdBy,
    @JsonKey(name: 'group_booking') String? groupBooking,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}

@freezed
class CategoryModelList with _$CategoryModelList {
  const factory CategoryModelList({
    @Default([]) List<CategoryModel> data,
  }) = _CategoryModelList;

  factory CategoryModelList.fromJson(Map<String, dynamic> json) => _$CategoryModelListFromJson(json);

  static Future<CategoryModelList> fromApi(Map<String, dynamic> data) async {
    return await Helper.getRest(Api.category, {}).then((value) {
      // printx(value,'stateeeeeeeeeeeeeeeeeeeeeeeeeeee');
      return CategoryModelList.fromJson(value);
    });
  }
}
