import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horror_chat_app/data/chat_data.dart';
import 'package:horror_chat_app/game/effect_rotate_screen.dart';
import 'package:horror_chat_app/game/effect_shake_screen.dart';
import 'package:horror_chat_app/google_ai_service.dart';
import 'package:horror_chat_app/screens/chat_screen.dart';
import 'package:horror_chat_app/state/s_friend_state.dart';
import 'package:horror_chat_app/widgets/left_normal_bubble.dart';
import 'package:horror_chat_app/widgets/right_normal_bubble.dart';

enum EffectType { none, shake, rotate }

class GameFlowManager extends ConsumerStatefulWidget {
  const GameFlowManager({super.key});

  @override
  ConsumerState<GameFlowManager> createState() => _GameFlowManagerState();
}

class _GameFlowManagerState extends ConsumerState<GameFlowManager> {
  late EffectType _effectType;
  late List<ChatData> _chatState;
  late List<Widget> _chatBubble;
  late final GoogleAiService _googleAiService = GoogleAiService(apiKey: dotenv.get('GEMINI_API_KEY'), initialPrompt: ref.read(sFriendStateProvider).initialPrompt);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _effectType = EffectType.none;
    _chatState = [];
    _chatBubble = [];
    
  }

/// エフェクトの創出はここで行う
  void processGame() {

    // setState(() {
    //   _effectType = EffectType.rotate;
    // });
  }

  Future<void> _handleOnTap() async {

    final tmp = ChatData(chatType: ChatType.right, message: _textEditingController.text);
    _textEditingController.clear();
    _chatState.add(tmp);

    setState(() {_chatBubble = [RightNormalBubble(message: tmp.message), ..._chatBubble];});

    final response = await _googleAiService.sendMessage(tmp.message);

    _chatState.add(ChatData(chatType: ChatType.left, message: response.message));

    setState(() {_chatBubble = [LeftNormalBubble(message: response.message), ..._chatBubble];});

    processGame();
  }

  void _handleAnimationCompleted() {
    setState(() {
      _effectType = EffectType.none;
    });
  }

  Widget buildEffect(BuildContext context) {
    final ChatScreen chat = ChatScreen(
      onTap: _handleOnTap,
      textEditingController: _textEditingController,
      children: _chatBubble
    );

    switch (_effectType) {
      case EffectType.none:
        return chat;
      case EffectType.shake:
        return EffectShakeScreen(
          onAnimationCompleted: _handleAnimationCompleted,
          child: chat,
        );
      case EffectType.rotate:
        return EffectRotateScreen(
          onAnimationCompleted: _handleAnimationCompleted,
          child: chat
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildEffect(context);
  }
}
