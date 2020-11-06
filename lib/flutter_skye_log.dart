library flutter_skye_log;

enum LogLevel {
  DEBUG,
  INFO,
  WARNING,
  ERROR,
  FATAL,
  OFF,
}

/// author:   Skye
/// date:     2020/11/6
/// des:      日志工具类
class Logger {
  LogLevel _level;

  static Logger _instance;

  factory Logger() => Logger();

  static void init({LogLevel logLevel = LogLevel.INFO}) {
    if (_instance != null) return;
    _instance = new Logger._internal();
    _instance._level = logLevel;
  }

  static Logger instance() {
    return _getInstance();
  }

  Logger._internal();

  static Logger _getInstance() {
    if (_instance == null) {
      _instance = new Logger._internal();
    }
    return _instance;
  }

  void printLog(String text, LogLevel logLevel) {
    if (logLevel.index < _level.index) return;
    String levelStr = logLevel.toString().split('.')[1].toString();
    String timeStr = DateTime.now().toString().split('.')[0];
    print("$levelStr\t|\t$timeStr\t|\t$text\n");
  }

  void debug(String text) => printLog(text, LogLevel.DEBUG);

  void info(String text) => printLog(text, LogLevel.INFO);

  void warning(String text) => printLog(text, LogLevel.WARNING);

  void error(String text) => printLog(text, LogLevel.ERROR);

  void fatal(String text) => printLog(text, LogLevel.FATAL);
}
