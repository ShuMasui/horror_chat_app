import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:horror_chat_app/theme.dart';
import 'package:horror_chat_app/widgets/left_normal_bubble.dart';
import 'package:horror_chat_app/widgets/right_normal_bubble.dart';

void main() {
  final children = <Widget>[
    LeftNormalBubble(message: 'test'),
    RightNormalBubble(message: 'test'),
    LeftLoadingBubble(),
  ];
  runApp(
    MaterialApp(
      theme: themeData,
      home: ChatScreen(onTap: () {}, children: children),
    ),
  );
}

class LeftLoadingBubble extends StatefulWidget {
  const LeftLoadingBubble({super.key});

  @override
  State<LeftLoadingBubble> createState() => _LeftLoadingBubbleState();
}

class _LeftLoadingBubbleState extends State<LeftLoadingBubble> {
  String _text = '';
  int _currentIndex = 0;
  int _cnt = 0;
  Timer? _timer;

  Future<void> startTyping() async {
    _timer = Timer.periodic(Duration(milliseconds: 300), (_) {
      if (_cnt < 3) {
        if (_currentIndex < 4) {
          setState(() {
            _text += '・';
            _currentIndex++;
          });
        } else {
          setState(() {
            _text = '';
            _currentIndex = 0;
            _cnt++;
          });
        }
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTyping();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Text(
            _text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

/// チャットバブルの生成をGameFlowManagerの方に任せよう
/// するとアニ<メーション付きチャットバブルの生成を完全にそっちに任せられる
/// こっちは生成されたものを描画するだけの仕組みにする
class ChatScreen extends StatefulWidget {
  final VoidCallback onTap;
  final List<Widget> children;

  const ChatScreen({super.key, required this.onTap, required this.children});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final body = SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                reverse: true,
                itemCount: widget.children.length,
                itemBuilder: (c, i) {
                  return widget.children[i];
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Container(
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.camera_alt),
                  Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade500,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message...',
                        ),
                        controller: _textEditingController,
                      ),
                    ),
                  ),
                  IconButton(onPressed: widget.onTap, icon: Icon(Icons.send)),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('ChatScreen')),
      body: body,
    );
  }
}
