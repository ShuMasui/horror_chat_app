import 'package:flutter/material.dart';
import 'package:horror_chat_app/data/chat_state.dart';
import 'package:horror_chat_app/game/effect_shake_screen.dart';
import 'package:horror_chat_app/screens/chat_screen.dart';

enum EffectType { none, shake }

class GameFlowManager extends StatefulWidget {
  const GameFlowManager({super.key});

  @override
  State<GameFlowManager> createState() => _GameFlowManagerState();
}

class _GameFlowManagerState extends State<GameFlowManager> {
  late EffectType _effectType;
  late List<ChatData> _chatState;

  @override
  void initState() {
    super.initState();
    _effectType = EffectType.none;
    _chatState = [];
  }

  void processGame() {
    setState(() {
      _effectType = EffectType.shake;
    });
  }

  Future<void> _handleOnTap() async {
    processGame();
  }

  void _handleAnimationCompleted() {
    setState(() {
      _effectType = EffectType.none;
    });
  }

  Widget buildEffect(BuildContext context) {
    final ChatScreen chat = ChatScreen(onTap: _handleOnTap);

    switch (_effectType) {
      case EffectType.none:
        return chat;
      case EffectType.shake:
        return EffectShakeScreen(
          onAnimationCompleted: _handleAnimationCompleted,
          child: chat,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildEffect(context);
  }
}
