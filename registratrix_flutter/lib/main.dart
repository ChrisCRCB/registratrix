import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'serverpod_client.dart';
import 'src/screens/home_screen.dart';
import 'src/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialiseServerpodClient();
  runApp(const MyApp());
}

/// The app class.
class MyApp extends StatelessWidget {
  /// Create an instance.
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    RendererBinding.instance.ensureSemantics();
    return MaterialApp(
      title: 'Registratrix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _HomePage(),
    );
  }
}

/// A widget which decides which screen to show.
class _HomePage extends StatefulWidget {
  /// Create an instance.
  const _HomePage();

  /// Create state for this widget.
  @override
  _HomePageState createState() => _HomePageState();
}

/// State for [_HomePage].
class _HomePageState extends State<_HomePage> {
  /// Initialise state.
  @override
  void initState() {
    super.initState();
    sessionManager.addListener(
      () => setState(() {}),
    );
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) =>
      sessionManager.isSignedIn ? const HomeScreen() : const LoginScreen();
}
