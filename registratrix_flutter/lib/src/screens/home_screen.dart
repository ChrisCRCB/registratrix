import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';

/// The home page for the app.
class HomeScreen extends StatefulWidget {
  /// Create an instance.
  const HomeScreen({
    super.key,
  });

  /// Create state for this widget.
  @override
  HomeScreenState createState() => HomeScreenState();
}

/// State for [HomeScreen].
class HomeScreenState extends State<HomeScreen> {
  /// Build a widget.
  @override
  Widget build(final BuildContext context) => const SimpleScaffold(
        title: 'Home',
        body: Focus(
          autofocus: true,
          child: Text('You are logged in.'),
        ),
      );
}
