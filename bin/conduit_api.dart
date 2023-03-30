import 'dart:io';

import 'package:conduit_core/conduit_core.dart';
import 'package:conduit_api/conduit_api.dart';

void main() async {
  final port = int.parse(Platform.environment["PORT"] ?? '8080');
  final service = Application<AppService>()
    ..options.port = port;
    await service.start(numberOfInstances: 3, consoleLogging: true);
}
