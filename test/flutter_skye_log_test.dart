import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_skye_log/flutter_skye_log.dart';

void main() {
  test('adds one to input values', () {
    Logger.init(logLevel: LogLevel.ERROR);

    Logger logger = Logger.instance();

    logger.debug("test debug");
    logger.info("test info");
    logger.warning("test warning");
    logger.error("test error");
    logger.fatal("test fatal");
  });
}
