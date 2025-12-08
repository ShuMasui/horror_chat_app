import 'dart:async';

import 'package:flutter/material.dart';

class TypeWriterWidget extends StatefulWidget {

  final String text;
  final Duration delay;
  final TextStyle style;

  const TypeWriterWidget({
    super.key,
    required this.text,
    this.delay = const Duration(milliseconds: 100),
    this.style = const TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontFamily: 'Courier',
    )
  });

  @override
  State<TypeWriterWidget> createState() => _TypeWriterWidgetState();
}

class _TypeWriterWidgetState extends State<TypeWriterWidget> {

  String _displayedText = '';
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  Future<void> _startTyping() async {
    _timer = Timer.periodic(widget.delay, (_) {
      if(_currentIndex < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_currentIndex];
          _currentIndex++;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayedText,
      style: widget.style,
    );
  }
}