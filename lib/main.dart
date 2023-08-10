import 'dart:async';
import 'dart:io';

import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main(List<String> args) {
  return runInitApp(
    args,
    package: 'ubuntu_welcome',
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
    onDone: () {
      final home =
          Platform.environment['REALHOME'] ?? Platform.environment['HOME'];
      try {
        File('$home/.config/ubuntu-welcome-done').createSync();
      } on FileSystemException catch (e) {
        stderr.writeln(e);
      }
    },
  );
}
