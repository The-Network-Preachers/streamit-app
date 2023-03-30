import 'package:flutter/material.dart';

import '../utils/colours.dart';

class JoinRoomPage extends StatefulWidget {
  const JoinRoomPage({super.key});

  @override
  State<JoinRoomPage> createState() => _JoinRoomPageState();
}

class _JoinRoomPageState extends State<JoinRoomPage> {
  String? _userName;
  String? _roomName;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 10,
                    bottom: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: kBlue,
                  ),
                  child: Text(
                    "StreamIt",
                    style: Theme.of(context).textTheme.titleLarge,
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
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'User Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter a valid User Name';
                          }

                          return null;
                        },
                        onSaved: (val) {
                          if (val != null) {
                            _userName = val.trim();
                          }
                        },
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Room Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter a valid Room Name';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          if (val != null) {
                            _roomName = val.trim();
                          }
                        },
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kBlue,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            // TODO: Implement create room functionality here
                            debugPrint("User Name: $_userName");
                            debugPrint("Room Name: $_roomName");
                          }
                        },
                        child: const Text('Create / Join Room'),
                      ),
                    ],
                  ),
                ),
              ),
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
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: kBlue,
                  ),
                  child: Center(
                    child: Text(
                      "The Network Preachers © 2023",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: kWhite,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
