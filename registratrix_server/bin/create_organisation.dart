import 'dart:convert';
import 'dart:io';

import 'package:mailer/mailer.dart';
import 'package:registratrix_server/src/emails.dart';
import 'package:registratrix_server/src/generated/endpoints.dart';
import 'package:registratrix_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

/// A script to create a new organisation.
Future<void> main() async {
  final pod = Serverpod(
    ['--role', 'maintenance'],
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );
  stdout.write('Organisation name: ');
  final organisationName = stdin.readLineSync()?.trim();
  if (organisationName == null) {
    return;
  }
  stdout.write('\nAdmin email address: ');
  final adminEmailAddress = stdin.readLineSync()?.trim();
  if (adminEmailAddress == null) {
    return;
  }
  stdout
    ..writeln('Organisation name: ${jsonEncode(organisationName)}')
    ..writeln('Admin email address: ${jsonEncode(adminEmailAddress)}');
  final session = await pod.createSession();
  try {
    final userInfo = await auth.UserInfo.db.findFirstRow(
      session,
      where: (final t) => t.email.equals(adminEmailAddress),
    );
    if (userInfo == null) {
      stdout.writeln(
        'There is no account with that email address.',
      );
    } else {
      final organisation = await Organisation.db.insertRow(
        session,
        Organisation(name: organisationName),
      );
      stdout.writeln('Created organisation $organisation.');
      final member = await OrganisationMember.db.insertRow(
        session,
        OrganisationMember(
          organisationId: organisation.id!,
          userInfoId: userInfo.id!,
          canAddEvents: true,
          canDeleteEvents: true,
          canEditOrganisation: true,
        ),
      );
      stdout.writeln('Created member $member.');
      final smtpServer = getSmtpSever(session);
      final message = getEmail(
        session: session,
        to: adminEmailAddress,
        subject: 'Organisation Created',
        text: 'Your new organisation $organisationName has been created.',
      );
      await send(message, smtpServer);
    }
  } finally {
    await session.close();
    await pod.start();
  }
}
