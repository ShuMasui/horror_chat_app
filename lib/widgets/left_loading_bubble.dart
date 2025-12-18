import 'dart:async';
import 'package:flutter/material.dart';

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
