import 'package:single_app/features/user/datasource/user_datasource.dart';
import 'package:single_app/features/user/repository/user_repository.dart';

class LogoutResponseMapper {
  static final Map<LogoutSourceResponse, LogoutResponse> _conversion = {
    LogoutSourceResponse.success: LogoutResponse.success,
    LogoutSourceResponse.unknownError: LogoutResponse.unknownError,
  };

  static LogoutResponse map(LogoutSourceResponse toMap) {
    return LogoutResponseMapper._conversion[toMap] ??
        LogoutResponse.unknownError;
  }
}
