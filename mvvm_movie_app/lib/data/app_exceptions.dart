class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataExceptions extends AppExceptions {
  FetchDataExceptions([String? message])
      : super(message, 'Error during communication');
}

class BadDataExceptions extends AppExceptions {
  BadDataExceptions([String? message])
      : super(message, 'invalid request');
}

class UnauthorizedExceptions extends AppExceptions {
 UnauthorizedExceptions([String? message])
      : super(message, 'Unauthorized request');
}

class InvalidInputExceptions extends AppExceptions {
  InvalidInputExceptions([String? message])
      : super(message, 'invalid input');
}