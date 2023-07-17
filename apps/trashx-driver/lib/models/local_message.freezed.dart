// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalMessage _$LocalMessageFromJson(Map<String, dynamic> json) {
  return _LocalMessage.fromJson(json);
}

/// @nodoc
mixin _$LocalMessage {
  RemoteMessage? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalMessageCopyWith<LocalMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalMessageCopyWith<$Res> {
  factory $LocalMessageCopyWith(
          LocalMessage value, $Res Function(LocalMessage) then) =
      _$LocalMessageCopyWithImpl<$Res, LocalMessage>;
  @useResult
  $Res call({RemoteMessage? message});
}

/// @nodoc
class _$LocalMessageCopyWithImpl<$Res, $Val extends LocalMessage>
    implements $LocalMessageCopyWith<$Res> {
  _$LocalMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalMessageCopyWith<$Res>
    implements $LocalMessageCopyWith<$Res> {
  factory _$$_LocalMessageCopyWith(
          _$_LocalMessage value, $Res Function(_$_LocalMessage) then) =
      __$$_LocalMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoteMessage? message});
}

/// @nodoc
class __$$_LocalMessageCopyWithImpl<$Res>
    extends _$LocalMessageCopyWithImpl<$Res, _$_LocalMessage>
    implements _$$_LocalMessageCopyWith<$Res> {
  __$$_LocalMessageCopyWithImpl(
      _$_LocalMessage _value, $Res Function(_$_LocalMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LocalMessage(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalMessage implements _LocalMessage {
  _$_LocalMessage({this.message});

  factory _$_LocalMessage.fromJson(Map<String, dynamic> json) =>
      _$$_LocalMessageFromJson(json);

  @override
  final RemoteMessage? message;

  @override
  String toString() {
    return 'LocalMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalMessageCopyWith<_$_LocalMessage> get copyWith =>
      __$$_LocalMessageCopyWithImpl<_$_LocalMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalMessageToJson(
      this,
    );
  }
}

abstract class _LocalMessage implements LocalMessage {
  factory _LocalMessage({final RemoteMessage? message}) = _$_LocalMessage;

  factory _LocalMessage.fromJson(Map<String, dynamic> json) =
      _$_LocalMessage.fromJson;

  @override
  RemoteMessage? get message;
  @override
  @JsonKey(ignore: true)
  _$$_LocalMessageCopyWith<_$_LocalMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
