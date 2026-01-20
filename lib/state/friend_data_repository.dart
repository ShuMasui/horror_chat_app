import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horror_chat_app/data/friends.dart';
import 'package:horror_chat_app/mock/fridend_mock.dart';

final friendRepositoryProvider = Provider<FriendDataRepository>(
  (ref) => FriendRepository(),
);

abstract class FriendDataRepository {
  List<Friends> getFriends();
}

class FriendRepository extends FriendDataRepository {
  @override
  List<Friends> getFriends() {
    return friendMock;
  }
}
