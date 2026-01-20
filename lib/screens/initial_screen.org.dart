import 'package:horror_chat_app/widgets/type_writer_widget.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {


  @override
  void initState() {
    super.initState();
    _navigateGoHome();
  }

  Future<void> _navigateGoHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if(mounted) {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screen = Scaffold(
      body: Container(
        child: Center(
          child: TypeWriterWidget(
            text: 'だれかいる', 
            delay: Duration(milliseconds: 400), 
          )
        ),
      ),
    );
    return screen;
  }
}

