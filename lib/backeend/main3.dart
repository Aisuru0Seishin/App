// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Backeend());
}

class Backeend extends StatelessWidget {
  const Backeend({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoTextFieldDemo(),
    );
  }
}

class CupertinoTextFieldDemo extends StatelessWidget {
  const CupertinoTextFieldDemo(
      {super.key, this.email = '', this.password = ''});

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: ListView(
          restorationId: 'text_field_demo_list_view',
          padding: const EdgeInsets.all(16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                textInputAction: TextInputAction.next,
                placeholder: "Email",
                keyboardType: TextInputType.emailAddress,
                clearButtonMode: OverlayVisibilityMode.editing,
                autocorrect: false,
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                textInputAction: TextInputAction.next,
                placeholder: "Password",
                clearButtonMode: OverlayVisibilityMode.editing,
                obscureText: true,
                autocorrect: false,
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
            ),
            // Disabled text field
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                enabled: false,
                textInputAction: TextInputAction.next,
                clearButtonMode: OverlayVisibilityMode.editing,
                obscureText: true,
                autocorrect: false,
              ),
            ),
            TextButton.icon(
                onPressed: () {
                  debugPrint(email);
                  debugPrint(password);
                },
                icon: const Icon(Icons.save),
                label: const Text("Sign In"))
          ],
        ),
      ),
    );
  }
}
