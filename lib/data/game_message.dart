import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_message.freezed.dart';
part 'game_message.g.dart';

@freezed
abstract class GameMessage with _$GameMessage {
  const factory GameMessage({
    required String currentScene,
    required String nextScene,
    required String message,
  }) = _GameMessage;

  factory GameMessage.fromJson(Map<String, dynamic> json) => _$GameMessageFromJson(json);
}