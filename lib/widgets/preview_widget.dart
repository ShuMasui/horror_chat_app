import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:horror_chat_app/data/chats_info.dart';
import 'package:horror_chat_app/data/friends.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horror_chat_app/state/s_chats_state.dart';

class PreviewWidget extends ConsumerWidget {
  final Friends friend;

  const PreviewWidget({super.key, required this.friend});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final widget = Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * .8,
            height: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                border: BoxBorder.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('説明文'),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 90,
                        child: Image.asset(friend.imageUrl),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                      friend.discription,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final notifier = ref.read(sChatsStateProvider.notifier);
              notifier.updateState(
                ChatsInfo(
                  friend: friend,
                  isUser: false,
                  text: friend.lastMessage,
                  date: friend.lastUpdate,
                ),
              );
              context.go('/chat');
            },
            child: Text('このコで遊ぶ'),
          ),
        ],
      ),
    );
    return widget;
  }
}
