import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:registratrix_client/registratrix_client.dart';

import '../../serverpod_client.dart';

/// A screen for selecting an organisation.
class SelectOrganisationScreen extends StatefulWidget {
  /// Create an instance.
  const SelectOrganisationScreen({
    required this.onDone,
    super.key,
  });

  /// The function to call with the selected organisation.
  final void Function(Organisation organisation) onDone;

  @override
  State<SelectOrganisationScreen> createState() =>
      _SelectOrganisationScreenState();
}

class _SelectOrganisationScreenState extends State<SelectOrganisationScreen> {
  /// The organisations which have been loaded.
  List<Organisation>? _organisations;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final organisations = _organisations;
    if (organisations == null) {
      client.organisation
          .getOrganisations()
          .then((final value) => setState(() => _organisations = value));
      return const LoadingScreen();
    }
    return SimpleScaffold(
      title: 'Select Organisation',
      body: organisations.isEmpty
          ? const CenterText(
              text: 'You are not a member of any organisations.',
              autofocus: true,
            )
          : ListViewBuilder(
              itemBuilder: (final context, final index) {
                final organisation = organisations[index];
                return ListTile(
                  autofocus: index == 0,
                  title: Text(organisation.name),
                  onTap: () => widget.onDone(organisation),
                );
              },
              itemCount: organisations.length,
            ),
    );
  }
}
