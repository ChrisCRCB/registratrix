import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

import 'src/emails.dart';
import 'src/generated/endpoints.dart';
import 'src/generated/protocol.dart';
import 'src/web/routes/root.dart';

/// This is the starting point of your Serverpod server. In most cases, you will
/// only need to make additions to this file if you add future calls,  are
/// configuring Relic (Serverpod's web-server), or need custom setup work.
Future<void> run(final List<String> args) async {
  auth.AuthConfig.set(
    auth.AuthConfig(
      sendValidationEmail:
          (final session, final email, final validationCode) async {
        final message = getEmail(
          session: session,
          to: email,
          subject: 'Validate Email',
          text: 'Your validation code is $validationCode.',
        );
        return sendMail(session, message);
      },
      sendPasswordResetEmail:
          (final session, final userInfo, final validationCode) async {
        final email = userInfo.email;
        if (email == null) {
          return false;
        }
        final message = getEmail(
          session: session,
          to: email,
          subject: 'Password Reset',
          text: 'Your password reset code is $validationCode.',
        );
        return sendMail(session, message);
      },
    ),
  );
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  // Start the server.
  await pod.start();
}
