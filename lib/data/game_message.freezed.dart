// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameMessage {

 String get currentScene; String get nextScene; String get message;
/// Create a copy of GameMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameMessageCopyWith<GameMessage> get copyWith => _$GameMessageCopyWithImpl<GameMessage>(this as GameMessage, _$identity);

  /// Serializes this GameMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameMessage&&(identical(other.currentScene, currentScene) || other.currentScene == currentScene)&&(identical(other.nextScene, nextScene) || other.nextScene == nextScene)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentScene,nextScene,message);

@override
String toString() {
  return 'GameMessage(currentScene: $currentScene, nextScene: $nextScene, message: $message)';
}


}

/// @nodoc
abstract mixin class $GameMessageCopyWith<$Res>  {
  factory $GameMessageCopyWith(GameMessage value, $Res Function(GameMessage) _then) = _$GameMessageCopyWithImpl;
@useResult
$Res call({
 String currentScene, String nextScene, String message
});




}
/// @nodoc
class _$GameMessageCopyWithImpl<$Res>
    implements $GameMessageCopyWith<$Res> {
  _$GameMessageCopyWithImpl(this._self, this._then);

  final GameMessage _self;
  final $Res Function(GameMessage) _then;

/// Create a copy of GameMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentScene = null,Object? nextScene = null,Object? message = null,}) {
  return _then(_self.copyWith(
currentScene: null == currentScene ? _self.currentScene : currentScene // ignore: cast_nullable_to_non_nullable
as String,nextScene: null == nextScene ? _self.nextScene : nextScene // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GameMessage].
extension GameMessagePatterns on GameMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameMessage value)  $default,){
final _that = this;
switch (_that) {
case _GameMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameMessage value)?  $default,){
final _that = this;
switch (_that) {
case _GameMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currentScene,  String nextScene,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameMessage() when $default != null:
return $default(_that.currentScene,_that.nextScene,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currentScene,  String nextScene,  String message)  $default,) {final _that = this;
switch (_that) {
case _GameMessage():
return $default(_that.currentScene,_that.nextScene,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currentScene,  String nextScene,  String message)?  $default,) {final _that = this;
switch (_that) {
case _GameMessage() when $default != null:
return $default(_that.currentScene,_that.nextScene,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameMessage implements GameMessage {
  const _GameMessage({required this.currentScene, required this.nextScene, required this.message});
  factory _GameMessage.fromJson(Map<String, dynamic> json) => _$GameMessageFromJson(json);

@override final  String currentScene;
@override final  String nextScene;
@override final  String message;

/// Create a copy of GameMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameMessageCopyWith<_GameMessage> get copyWith => __$GameMessageCopyWithImpl<_GameMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameMessage&&(identical(other.currentScene, currentScene) || other.currentScene == currentScene)&&(identical(other.nextScene, nextScene) || other.nextScene == nextScene)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentScene,nextScene,message);

@override
String toString() {
  return 'GameMessage(currentScene: $currentScene, nextScene: $nextScene, message: $message)';
}


}

/// @nodoc
abstract mixin class _$GameMessageCopyWith<$Res> implements $GameMessageCopyWith<$Res> {
  factory _$GameMessageCopyWith(_GameMessage value, $Res Function(_GameMessage) _then) = __$GameMessageCopyWithImpl;
@override @useResult
$Res call({
 String currentScene, String nextScene, String message
});




}
/// @nodoc
class __$GameMessageCopyWithImpl<$Res>
    implements _$GameMessageCopyWith<$Res> {
  __$GameMessageCopyWithImpl(this._self, this._then);

  final _GameMessage _self;
  final $Res Function(_GameMessage) _then;

/// Create a copy of GameMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentScene = null,Object? nextScene = null,Object? message = null,}) {
  return _then(_GameMessage(
currentScene: null == currentScene ? _self.currentScene : currentScene // ignore: cast_nullable_to_non_nullable
as String,nextScene: null == nextScene ? _self.nextScene : nextScene // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
