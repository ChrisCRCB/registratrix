import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

import '../../serverpod_client.dart';

/// The login screen for this app.
class LoginScreen extends StatelessWidget {
  /// Create an instance.
  const LoginScreen({
    super.key,
  });

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => SimpleScaffold(
        title: 'Login',
        body: Column(
          children: [
            const Focus(
              autofocus: true,
              child: Text(
                'Please login.',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SignInWithEmailButton(
              caller: client.modules.auth,
            ),
          ],
        ),
      );
}
