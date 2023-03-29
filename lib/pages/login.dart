import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _userName;
  String? _roomName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StreamIT'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'User Name'),
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
                    decoration: const InputDecoration(labelText: 'Room Name'),
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // TODO: Implement create room functionality here
                        debugPrint("User Name: $_userName");
                        debugPrint("Room Name: $_roomName");
                      }
                    },
                    child: const Text('Create Room'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
