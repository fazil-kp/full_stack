// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      categoryId: json['category_id'] as int?,
      categoryName: json['category_name'] as String?,
      images: json['images'] as String?,
      tableName: json['table_name'] as String?,
      lastUpdatedTime: json['last_updated_time'] == null
          ? null
          : DateTime.parse(json['last_updated_time'] as String),
      lastUpdatedBy: json['last_updated_by'] as String?,
      createdTime: json['createdTime'] == null
          ? null
          : DateTime.parse(json['createdTime'] as String),
      createdBy: json['createdBy'] as String?,
      groupBooking: json['group_booking'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'images': instance.images,
      'table_name': instance.tableName,
      'last_updated_time': instance.lastUpdatedTime?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'createdTime': instance.createdTime?.toIso8601String(),
      'createdBy': instance.createdBy,
      'group_booking': instance.groupBooking,
    };

_$CategoryModelListImpl _$$CategoryModelListImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryModelListImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryModelListImplToJson(
        _$CategoryModelListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
