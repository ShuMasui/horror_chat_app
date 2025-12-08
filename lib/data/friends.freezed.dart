// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Friends {

 String get name; String get lastMessage; String get imageUrl; DateTime get lastUpdate;
/// Create a copy of Friends
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendsCopyWith<Friends> get copyWith => _$FriendsCopyWithImpl<Friends>(this as Friends, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Friends&&(identical(other.name, name) || other.name == name)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}


@override
int get hashCode => Object.hash(runtimeType,name,lastMessage,imageUrl,lastUpdate);

@override
String toString() {
  return 'Friends(name: $name, lastMessage: $lastMessage, imageUrl: $imageUrl, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class $FriendsCopyWith<$Res>  {
  factory $FriendsCopyWith(Friends value, $Res Function(Friends) _then) = _$FriendsCopyWithImpl;
@useResult
$Res call({
 String name, String lastMessage, String imageUrl, DateTime lastUpdate
});




}
/// @nodoc
class _$FriendsCopyWithImpl<$Res>
    implements $FriendsCopyWith<$Res> {
  _$FriendsCopyWithImpl(this._self, this._then);

  final Friends _self;
  final $Res Function(Friends) _then;

/// Create a copy of Friends
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? lastMessage = null,Object? imageUrl = null,Object? lastUpdate = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Friends].
extension FriendsPatterns on Friends {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Friends value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Friends() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Friends value)  $default,){
final _that = this;
switch (_that) {
case _Friends():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Friends value)?  $default,){
final _that = this;
switch (_that) {
case _Friends() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String lastMessage,  String imageUrl,  DateTime lastUpdate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Friends() when $default != null:
return $default(_that.name,_that.lastMessage,_that.imageUrl,_that.lastUpdate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String lastMessage,  String imageUrl,  DateTime lastUpdate)  $default,) {final _that = this;
switch (_that) {
case _Friends():
return $default(_that.name,_that.lastMessage,_that.imageUrl,_that.lastUpdate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String lastMessage,  String imageUrl,  DateTime lastUpdate)?  $default,) {final _that = this;
switch (_that) {
case _Friends() when $default != null:
return $default(_that.name,_that.lastMessage,_that.imageUrl,_that.lastUpdate);case _:
  return null;

}
}

}

/// @nodoc


class _Friends implements Friends {
  const _Friends({required this.name, required this.lastMessage, required this.imageUrl, required this.lastUpdate});
  

@override final  String name;
@override final  String lastMessage;
@override final  String imageUrl;
@override final  DateTime lastUpdate;

/// Create a copy of Friends
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendsCopyWith<_Friends> get copyWith => __$FriendsCopyWithImpl<_Friends>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Friends&&(identical(other.name, name) || other.name == name)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}


@override
int get hashCode => Object.hash(runtimeType,name,lastMessage,imageUrl,lastUpdate);

@override
String toString() {
  return 'Friends(name: $name, lastMessage: $lastMessage, imageUrl: $imageUrl, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class _$FriendsCopyWith<$Res> implements $FriendsCopyWith<$Res> {
  factory _$FriendsCopyWith(_Friends value, $Res Function(_Friends) _then) = __$FriendsCopyWithImpl;
@override @useResult
$Res call({
 String name, String lastMessage, String imageUrl, DateTime lastUpdate
});




}
/// @nodoc
class __$FriendsCopyWithImpl<$Res>
    implements _$FriendsCopyWith<$Res> {
  __$FriendsCopyWithImpl(this._self, this._then);

  final _Friends _self;
  final $Res Function(_Friends) _then;

/// Create a copy of Friends
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? lastMessage = null,Object? imageUrl = null,Object? lastUpdate = null,}) {
  return _then(_Friends(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
