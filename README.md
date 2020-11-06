# flutter_skye_log

# 导入
```yaml
flutter_skye_log:
    git:
      url: git@github.com:skyesk/flutter_skye_log.git
      ref: main
```

# 使用
### 在main中
```dart
    Logger.init(logLevel: LogLevel.INFO);
```

### 在需要打log的页面
```dart
    Logger logger = Logger.instance();
```

### 打印log时
```dart
    logger.debug("debug");
```
