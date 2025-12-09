import 'package:horror_chat_app/data/chats_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 's_chats_state.g.dart';

@riverpod
class SChatsState extends _$SChatsState {
  @override
  List<ChatsInfo> build() {
    return [];
  }

  void updateState(ChatsInfo c) {
    state = [...state, c];
  }
}
