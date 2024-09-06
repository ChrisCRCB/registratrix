import 'package:registratrix_client/registratrix_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

/// The session manager to use.
late SessionManager sessionManager;

/// The serverpod client to use.
late Client client;

/// Initialise serverpod.
Future<void> initialiseServerpodClient() async {
  const ipAddress = 'localhost';
  client = Client(
    'http://$ipAddress:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();
  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();
}
