import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:horror_chat_app/state/s_friend_state.dart';

class ChatScreen extends ConsumerWidget {
  
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final pepe = ref.watch(sFriendStateProvider);
    


    return const Placeholder();
  }

}
