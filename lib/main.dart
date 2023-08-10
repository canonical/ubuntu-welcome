import 'dart:async';

import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main(List<String> args) {
  return runInitApp(
    args,
    package: 'ubuntu_welcome',
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
  );
}
