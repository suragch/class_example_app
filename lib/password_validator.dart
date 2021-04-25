class PasswordValidator {
  bool isGood(String password) {


    if (!_hasNumbers(password)) {
      return false;
    }

    if (!_hasLetters(password)) {
      return false;
    }

    final length = password.length;
    return length > 4 && length <= 10;
  }

  bool _hasNumbers(String password) {
    return password.contains(RegExp(r'[0-9]'));
  }

  bool _hasLetters(String password) {
    return password.contains(RegExp(r'[a-zA-Z]'));
  }
}