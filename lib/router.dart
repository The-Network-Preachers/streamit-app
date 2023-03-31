import 'package:flutter/material.dart';

import './pages/join_room_page.dart';
import './utils/themes.dart';

class StreamItRouter extends StatelessWidget {
  const StreamItRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: const JoinRoomPage(),
    );
  }
}
