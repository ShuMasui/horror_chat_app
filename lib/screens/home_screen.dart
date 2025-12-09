import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:horror_chat_app/mock/fridend_mock.dart';

import 'package:horror_chat_app/widgets/preview_widget.dart';
import 'package:horror_chat_app/data/friends.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Friends _frined = friendMock[0];

  @override
  void initState() {
    super.initState();
    _frined = friendMock[0];
  }

  void _showDiscription(int i) {
    setState(() {
      _frined = friendMock[i];
    });
  }

  Widget itemBuilder(BuildContext c, int i) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          border: BoxBorder.all(color: Theme.of(context).colorScheme.secondary),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
                child: Image.asset(friendMock[i].imageUrl),
              ),
            ),
            GestureDetector(
              onTap: () {
                HapticFeedback.mediumImpact();
                _showDiscription(i);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(friendMock[i].name, style: TextStyle(fontSize: 10)),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Text(
                      friendMock[i].lastMessage,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Text(friendMock[i].lastUpdate.toString().substring(0, 10)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final children = [
      PreviewWidget(friend: _frined),
      Expanded(
        child: ListView.builder(
          itemCount: friendMock.length,
          itemBuilder: (c, i) => itemBuilder(c, i),
        ),
      ),
    ];
    final body = Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
    return Scaffold(body: body);
  }
}
