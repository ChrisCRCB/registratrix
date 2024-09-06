import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:serverpod/serverpod.dart';

/// Get a suitable SMTP server for sending emails.
SmtpServer getSmtpSever(final Session session) => SmtpServer(
      session.passwords['smtpServer']!,
      password: session.passwords['smtpPassword'],
      port: int.parse(session.passwords['smtpPort'] ?? '25'),
      ssl: bool.parse(session.passwords['smtpSsl'] ?? 'true'),
      username: session.passwords['smtpUsername'],
      name: session.passwords['emailFromName'],
    );

/// Return a suitable email.
Message getEmail({
  required final Session session,
  required final String to,
  required final String subject,
  required final String text,
}) =>
    Message()
      ..from = Address(
        session.passwords['smtpUsername']!,
        session.passwords['emailFromName'],
      )
      ..recipients.add(to)
      ..subject = subject
      ..text = text
      ..html = text;
