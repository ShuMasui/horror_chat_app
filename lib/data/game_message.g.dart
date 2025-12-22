// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameMessage _$GameMessageFromJson(Map<String, dynamic> json) => _GameMessage(
  currentScene: json['currentScene'] as String,
  nextScene: json['nextScene'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$GameMessageToJson(_GameMessage instance) =>
    <String, dynamic>{
      'currentScene': instance.currentScene,
      'nextScene': instance.nextScene,
      'message': instance.message,
    };
