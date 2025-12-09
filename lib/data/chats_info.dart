import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:horror_chat_app/data/friends.dart';

part 'chats_info.freezed.dart';

@freezed
abstract class ChatsInfo with _$ChatsInfo {
  const factory ChatsInfo({
    required Friends friend,
    required bool isUser,
    required String text,
    required DateTime date,
  }) = _ChatsInfo;
}
