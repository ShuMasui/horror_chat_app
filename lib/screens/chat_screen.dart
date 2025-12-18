
import 'package:flutter/material.dart';
import 'package:horror_chat_app/theme.dart';
import 'package:horror_chat_app/widgets/left_loading_bubble.dart';
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
      home: ChatScreen(onTap: () {}, children: children, textEditingController: TextEditingController(),),
    ),
  );
}

/// チャットバブルの生成をGameFlowManagerの方に任せよう
/// するとアニ<メーション付きチャットバブルの生成を完全にそっちに任せられる
/// こっちは生成されたものを描画するだけの仕組みにする
class ChatScreen extends StatefulWidget {
  final VoidCallback onTap;
  final List<Widget> children;
  final TextEditingController textEditingController;

  const ChatScreen({super.key, required this.onTap, required this.textEditingController, required this.children,});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

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
                        autofocus: true,
                        onEditingComplete: widget.onTap,
                        controller: widget.textEditingController,
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
