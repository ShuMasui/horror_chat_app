import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:horror_chat_app/data/friends.dart';

part 's_friend_state.g.dart';

@Riverpod(keepAlive: true)
class SFriendState extends _$SFriendState {
  @override
  Friends build() {
    return Friends(
      id: '',
      name: '',
      lastMessage: '',
      imageUrl: '',
      lastUpdate: DateTime.now(),
      discription: '',
    );
  }

  void updateState(Friends f) {
    state = f;
  }
}
