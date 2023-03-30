import 'package:flutter/material.dart';

import './pages/join_room_page.dart';

class StreamItRouter extends StatelessWidget {
  const StreamItRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const JoinRoomPage(),
      },
    );
  }
}
