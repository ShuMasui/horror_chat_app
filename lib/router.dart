import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'package:horror_chat_app/screens/chat_screen.dart';
import 'package:horror_chat_app/screens/initial_screen.dart';
import 'package:horror_chat_app/screens/home_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'init',
      pageBuilder: (context, state) {
        return MaterialPage(key: state.pageKey, child: InitialScreen());
      },
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(key: state.pageKey, child: HomeScreen());
      },
    ),
    GoRoute(
      path: '/chat',
      name: 'chat',
      pageBuilder: (context, state) {
        return MaterialPage(key: state.pageKey, child: ChatScreen());
      },
    ),
  ],
);
