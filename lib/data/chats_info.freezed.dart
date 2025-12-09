// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatsInfo {

 Friends get friend; bool get isUser; String get text; DateTime get date;
/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsInfoCopyWith<ChatsInfo> get copyWith => _$ChatsInfoCopyWithImpl<ChatsInfo>(this as ChatsInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatsInfo&&(identical(other.friend, friend) || other.friend == friend)&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,friend,isUser,text,date);

@override
String toString() {
  return 'ChatsInfo(friend: $friend, isUser: $isUser, text: $text, date: $date)';
}


}

/// @nodoc
abstract mixin class $ChatsInfoCopyWith<$Res>  {
  factory $ChatsInfoCopyWith(ChatsInfo value, $Res Function(ChatsInfo) _then) = _$ChatsInfoCopyWithImpl;
@useResult
$Res call({
 Friends friend, bool isUser, String text, DateTime date
});


$FriendsCopyWith<$Res> get friend;

}
/// @nodoc
class _$ChatsInfoCopyWithImpl<$Res>
    implements $ChatsInfoCopyWith<$Res> {
  _$ChatsInfoCopyWithImpl(this._self, this._then);

  final ChatsInfo _self;
  final $Res Function(ChatsInfo) _then;

/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? friend = null,Object? isUser = null,Object? text = null,Object? date = null,}) {
  return _then(_self.copyWith(
friend: null == friend ? _self.friend : friend // ignore: cast_nullable_to_non_nullable
as Friends,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendsCopyWith<$Res> get friend {
  
  return $FriendsCopyWith<$Res>(_self.friend, (value) {
    return _then(_self.copyWith(friend: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatsInfo].
extension ChatsInfoPatterns on ChatsInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatsInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatsInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatsInfo value)  $default,){
final _that = this;
switch (_that) {
case _ChatsInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatsInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ChatsInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Friends friend,  bool isUser,  String text,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatsInfo() when $default != null:
return $default(_that.friend,_that.isUser,_that.text,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Friends friend,  bool isUser,  String text,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _ChatsInfo():
return $default(_that.friend,_that.isUser,_that.text,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Friends friend,  bool isUser,  String text,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _ChatsInfo() when $default != null:
return $default(_that.friend,_that.isUser,_that.text,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _ChatsInfo implements ChatsInfo {
  const _ChatsInfo({required this.friend, required this.isUser, required this.text, required this.date});
  

@override final  Friends friend;
@override final  bool isUser;
@override final  String text;
@override final  DateTime date;

/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatsInfoCopyWith<_ChatsInfo> get copyWith => __$ChatsInfoCopyWithImpl<_ChatsInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatsInfo&&(identical(other.friend, friend) || other.friend == friend)&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.text, text) || other.text == text)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,friend,isUser,text,date);

@override
String toString() {
  return 'ChatsInfo(friend: $friend, isUser: $isUser, text: $text, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ChatsInfoCopyWith<$Res> implements $ChatsInfoCopyWith<$Res> {
  factory _$ChatsInfoCopyWith(_ChatsInfo value, $Res Function(_ChatsInfo) _then) = __$ChatsInfoCopyWithImpl;
@override @useResult
$Res call({
 Friends friend, bool isUser, String text, DateTime date
});


@override $FriendsCopyWith<$Res> get friend;

}
/// @nodoc
class __$ChatsInfoCopyWithImpl<$Res>
    implements _$ChatsInfoCopyWith<$Res> {
  __$ChatsInfoCopyWithImpl(this._self, this._then);

  final _ChatsInfo _self;
  final $Res Function(_ChatsInfo) _then;

/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? friend = null,Object? isUser = null,Object? text = null,Object? date = null,}) {
  return _then(_ChatsInfo(
friend: null == friend ? _self.friend : friend // ignore: cast_nullable_to_non_nullable
as Friends,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ChatsInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendsCopyWith<$Res> get friend {
  
  return $FriendsCopyWith<$Res>(_self.friend, (value) {
    return _then(_self.copyWith(friend: value));
  });
}
}

// dart format on
