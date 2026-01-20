import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:horror_chat_app/state/friend_data_repository.dart';
import 'package:horror_chat_app/data/friends.dart';
import 'package:horror_chat_app/state/s_friend_state.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  Widget _listBuilder(BuildContext context, Friends friend) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      height: 220,
      child: IconButton(
        icon: Image.asset(friend.imageUrl),
        onPressed: friend.enabled
            ? () {
                ref.read(sFriendStateProvider.notifier).updateState(friend);
                context.go('/game');
              }
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final friendRepository = ref.watch(friendRepositoryProvider);
    List<Friends> friends = friendRepository.getFriends();

    final body = Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          child: Image(
            image: AssetImage('homescreens/homescreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: AlignmentGeometry.center,
          child: Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                SizedBox(
                  height: 25,
                  child: Image(image: AssetImage('homescreens/hero.png')),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: ScrollBehavior().copyWith(overscroll: false),
                    child: ListView.builder(
                      itemCount: friends.length,
                      itemBuilder: (c, i) => _listBuilder(c, friends[i]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    return Scaffold(body: body);
  }
}
