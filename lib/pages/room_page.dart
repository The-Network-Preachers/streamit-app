import 'package:flutter/material.dart';

import '../utils/colours.dart';

class RoomPage extends StatefulWidget {
  final String roomName;
  final String userName;

  const RoomPage({
    Key? key,
    required this.roomName,
    required this.userName,
  }) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: kBlue,
                ),
                child: SafeArea(
                  bottom: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.roomName,
                        style: textTheme.titleLarge,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.exit_to_app_rounded,
                          color: kWhite,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      kBlue,
                      kWhite,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                  child: Text("No Files Yet!"),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 20,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kBlue,
                      kWhite,
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                decoration: const BoxDecoration(
                  color: kBlue,
                ),
                child: SafeArea(
                  top: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "No File Selected!",
                        style: textTheme.headlineSmall!.copyWith(
                          color: kWhite,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file_rounded,
                              color: kWhite,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send_rounded,
                              color: kWhite,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
