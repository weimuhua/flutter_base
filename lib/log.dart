import 'package:f_logs/f_logs.dart';
import 'package:sembast/sembast.dart';

void initLog() {
  LogsConfig config = FLog.getDefaultConfigurations()
    ..isDevelopmentDebuggingEnabled = false
    ..timestampFormat = TimestampFormat.TIME_FORMAT_FULL_3
    ..formatType = FormatType.FORMAT_CUSTOM
    ..fieldOrderFormatCustom = [
      FieldName.TIMESTAMP,
      FieldName.LOG_LEVEL,
      FieldName.TEXT,
      FieldName.EXCEPTION,
      FieldName.STACKTRACE
    ]
    ..customOpeningDivider = ""
    ..customClosingDivider = "";

  FLog.applyConfigurations(config);
}

Future<void> deleteLogIfNeed() async {
  var limit = 2000000;
  var logs = await FLog.getAllLogs();
  FLog.info(text: "current log size: ${logs.length}");

  if (logs.length > limit) {
    var log = logs[logs.length - limit];
    await FLog.deleteAllLogsByFilter(filters: [
      Filter.lessThan(DBConstants.FIELD_TIME_IN_MILLIS, log.timeInMillis)
    ]);

    FLog.getAllLogs().then(
        (value) => {FLog.info(text: "current log size: ${value.length}")});
  }
}
