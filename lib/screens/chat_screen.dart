import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final VoidCallback onTap;
  const ChatScreen({super.key, required this.onTap});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChatScreen')),
      body: Center(
        child: ElevatedButton(onPressed: widget.onTap, child: Text('shake')),
      ),
    );
  }
}
