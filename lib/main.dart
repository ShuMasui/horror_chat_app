import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horror_chat_app/router.dart';

import 'package:horror_chat_app/theme.dart';

/// Entry Point of Horror Chat                                                       
Future<void> main() async {
  await dotenv.load(fileName: '.env');
  final app = ProviderScope(
    child: MaterialApp.router(
      routerConfig: goRouter,
      title: 'chat-gemini',
      debugShowCheckedModeBanner: false,
      theme: themeData,
    ),
  );

  runApp(app);
}
