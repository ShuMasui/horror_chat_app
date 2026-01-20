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
  }

  void handleStartButton() {
    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    final body = Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage('assets/initialscreen/initialscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 100),
              SizedBox(
                width: 250,
                child: IconButton(
                  icon: Image(
                    image: AssetImage('assets/initialscreen/hazimekara.png'),
                    fit: BoxFit.cover,
                  ),
                  onPressed: () => handleStartButton(),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 250,
                child: IconButton(
                  icon: Image(
                    image: AssetImage('assets/initialscreen/tudukikara.png'),
                    fit: BoxFit.cover,
                  ),
                  onPressed: () => handleStartButton(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    return Scaffold(body: body);
  }
}
