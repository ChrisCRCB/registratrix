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
  /// Any error object.
  Object? _error;

  /// Any stack trace.
  StackTrace? _stackTrace;

  /// The user user object.
  SuperUser? _superUser;

  /// Whether the super user has been loaded.
  late bool loadedSuperUser;

  /// The organisations which have been loaded.
  List<Organisation>? _organisations;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    loadedSuperUser = false;
  }

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final error = _error;
    if (error != null) {
      return PopScope(child: ErrorScreen(
          error: error,
          stackTrace: _stackTrace,
        ), );
      return WillPopScope(
        child: ,
        onWillPop: () async {
          setState(() {
            _error = null;
            _stackTrace = null;
            _organisations = null;
            _superUser = null;
            loadedSuperUser = false;
          });
          return true;
        },
      );
    }
    final superUser = _superUser;
    if (loadedSuperUser == false) {
      client.organisation
          .getSuperUser()
          .then(
            (final value) => setState(() {
              _superUser = value;
              _organisations = null;
            }),
          )
          .onError(handleError);
    }
    final organisations = _organisations;
    if (organisations == null) {
      if (superUser == null) {
        client.organisation
            .getOrganisations()
            .then((final value) => setState(() => _organisations = value))
            .onError(handleError);
      } else {
        client.organisation
            .getAllOrganisations()
            .then((final value) => setState(() => _organisations = value))
            .onError(handleError);
      }
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

  /// Handle errors.
  void handleError(final Object error, final StackTrace? stackTrace) =>
      setState(() {
        _error = error;
        _stackTrace = stackTrace;
      });
}
