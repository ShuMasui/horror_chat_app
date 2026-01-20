import 'package:flutter/material.dart';

/// チャットバブルの生成をGameFlowManagerの方に任せよう
/// するとアニ<メーション付きチャットバブルの生成を完全にそっちに任せられる
/// こっちは生成されたものを描画するだけの仕組みにする
class ChatScreen extends StatefulWidget {
  final VoidCallback? onTap;
  final List<Widget> children;
  final TextEditingController textEditingController;
  final String? backGroundImageUrl;
  final String name;

  const ChatScreen({
    super.key,
    required this.onTap,
    required this.textEditingController,
    this.backGroundImageUrl,
    required this.name,
    required this.children,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final chat = SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: SizedBox(
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade500,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 0,
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
                    ),
                    IconButton(onPressed: widget.onTap, icon: Icon(Icons.send)),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Image(
                image: AssetImage('backgrounds/wood.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );

    final image = SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image(
        image: AssetImage(widget.backGroundImageUrl ?? 'backgrounds/chat.jpg'),
        fit: BoxFit.cover,
      ),
    );

    final body = Stack(children: [image, chat]);

    final appBar = AppBar(
      flexibleSpace: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image(
          image: AssetImage('backgrounds/wood.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Text(widget.name, style: TextStyle(fontSize: 15)),
    );

    return Scaffold(appBar: appBar, body: body);
  }
}
