// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_name')
  String? get tableName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_time')
  DateTime? get lastUpdatedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  String? get lastUpdatedBy => throw _privateConstructorUsedError;
  DateTime? get createdTime => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_booking')
  String? get groupBooking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      String? images,
      @JsonKey(name: 'table_name') String? tableName,
      @JsonKey(name: 'last_updated_time') DateTime? lastUpdatedTime,
      @JsonKey(name: 'last_updated_by') String? lastUpdatedBy,
      DateTime? createdTime,
      String? createdBy,
      @JsonKey(name: 'group_booking') String? groupBooking});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? images = freezed,
    Object? tableName = freezed,
    Object? lastUpdatedTime = freezed,
    Object? lastUpdatedBy = freezed,
    Object? createdTime = freezed,
    Object? createdBy = freezed,
    Object? groupBooking = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      tableName: freezed == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedTime: freezed == lastUpdatedTime
          ? _value.lastUpdatedTime
          : lastUpdatedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupBooking: freezed == groupBooking
          ? _value.groupBooking
          : groupBooking // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      String? images,
      @JsonKey(name: 'table_name') String? tableName,
      @JsonKey(name: 'last_updated_time') DateTime? lastUpdatedTime,
      @JsonKey(name: 'last_updated_by') String? lastUpdatedBy,
      DateTime? createdTime,
      String? createdBy,
      @JsonKey(name: 'group_booking') String? groupBooking});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? images = freezed,
    Object? tableName = freezed,
    Object? lastUpdatedTime = freezed,
    Object? lastUpdatedBy = freezed,
    Object? createdTime = freezed,
    Object? createdBy = freezed,
    Object? groupBooking = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      tableName: freezed == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedTime: freezed == lastUpdatedTime
          ? _value.lastUpdatedTime
          : lastUpdatedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupBooking: freezed == groupBooking
          ? _value.groupBooking
          : groupBooking // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {@JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'category_name') this.categoryName,
      this.images,
      @JsonKey(name: 'table_name') this.tableName,
      @JsonKey(name: 'last_updated_time') this.lastUpdatedTime,
      @JsonKey(name: 'last_updated_by') this.lastUpdatedBy,
      this.createdTime,
      this.createdBy,
      @JsonKey(name: 'group_booking') this.groupBooking});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  final String? images;
  @override
  @JsonKey(name: 'table_name')
  final String? tableName;
  @override
  @JsonKey(name: 'last_updated_time')
  final DateTime? lastUpdatedTime;
  @override
  @JsonKey(name: 'last_updated_by')
  final String? lastUpdatedBy;
  @override
  final DateTime? createdTime;
  @override
  final String? createdBy;
  @override
  @JsonKey(name: 'group_booking')
  final String? groupBooking;

  @override
  String toString() {
    return 'CategoryModel(categoryId: $categoryId, categoryName: $categoryName, images: $images, tableName: $tableName, lastUpdatedTime: $lastUpdatedTime, lastUpdatedBy: $lastUpdatedBy, createdTime: $createdTime, createdBy: $createdBy, groupBooking: $groupBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.lastUpdatedTime, lastUpdatedTime) ||
                other.lastUpdatedTime == lastUpdatedTime) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                other.lastUpdatedBy == lastUpdatedBy) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.groupBooking, groupBooking) ||
                other.groupBooking == groupBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      categoryName,
      images,
      tableName,
      lastUpdatedTime,
      lastUpdatedBy,
      createdTime,
      createdBy,
      groupBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
          {@JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'category_name') final String? categoryName,
          final String? images,
          @JsonKey(name: 'table_name') final String? tableName,
          @JsonKey(name: 'last_updated_time') final DateTime? lastUpdatedTime,
          @JsonKey(name: 'last_updated_by') final String? lastUpdatedBy,
          final DateTime? createdTime,
          final String? createdBy,
          @JsonKey(name: 'group_booking') final String? groupBooking}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  String? get images;
  @override
  @JsonKey(name: 'table_name')
  String? get tableName;
  @override
  @JsonKey(name: 'last_updated_time')
  DateTime? get lastUpdatedTime;
  @override
  @JsonKey(name: 'last_updated_by')
  String? get lastUpdatedBy;
  @override
  DateTime? get createdTime;
  @override
  String? get createdBy;
  @override
  @JsonKey(name: 'group_booking')
  String? get groupBooking;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModelList _$CategoryModelListFromJson(Map<String, dynamic> json) {
  return _CategoryModelList.fromJson(json);
}

/// @nodoc
mixin _$CategoryModelList {
  List<CategoryModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelListCopyWith<CategoryModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelListCopyWith<$Res> {
  factory $CategoryModelListCopyWith(
          CategoryModelList value, $Res Function(CategoryModelList) then) =
      _$CategoryModelListCopyWithImpl<$Res, CategoryModelList>;
  @useResult
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class _$CategoryModelListCopyWithImpl<$Res, $Val extends CategoryModelList>
    implements $CategoryModelListCopyWith<$Res> {
  _$CategoryModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelListImplCopyWith<$Res>
    implements $CategoryModelListCopyWith<$Res> {
  factory _$$CategoryModelListImplCopyWith(_$CategoryModelListImpl value,
          $Res Function(_$CategoryModelListImpl) then) =
      __$$CategoryModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$$CategoryModelListImplCopyWithImpl<$Res>
    extends _$CategoryModelListCopyWithImpl<$Res, _$CategoryModelListImpl>
    implements _$$CategoryModelListImplCopyWith<$Res> {
  __$$CategoryModelListImplCopyWithImpl(_$CategoryModelListImpl _value,
      $Res Function(_$CategoryModelListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CategoryModelListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelListImpl implements _CategoryModelList {
  const _$CategoryModelListImpl({final List<CategoryModel> data = const []})
      : _data = data;

  factory _$CategoryModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelListImplFromJson(json);

  final List<CategoryModel> _data;
  @override
  @JsonKey()
  List<CategoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CategoryModelList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelListImplCopyWith<_$CategoryModelListImpl> get copyWith =>
      __$$CategoryModelListImplCopyWithImpl<_$CategoryModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelListImplToJson(
      this,
    );
  }
}

abstract class _CategoryModelList implements CategoryModelList {
  const factory _CategoryModelList({final List<CategoryModel> data}) =
      _$CategoryModelListImpl;

  factory _CategoryModelList.fromJson(Map<String, dynamic> json) =
      _$CategoryModelListImpl.fromJson;

  @override
  List<CategoryModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelListImplCopyWith<_$CategoryModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
