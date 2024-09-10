import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';
import 'package:registratrix_client/registratrix_client.dart';

import 'select_organisation_screen.dart';

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
  /// The organisation to work with.
  Organisation? _organisation;

  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final organisation = _organisation;
    if (organisation == null) {
      return SelectOrganisationScreen(
        onDone: (final organisation) =>
            setState(() => _organisation = organisation),
      );
    }
    return SimpleScaffold(
      title: 'Home',
      body: Focus(
        autofocus: true,
        child: Text(organisation.name),
      ),
    );
  }
}
