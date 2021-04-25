// Make a password validator with the following condition:
// - "The password should be between 5 to 10 characters."


import 'package:flutter_test/flutter_test.dart';
import 'package:layout/password_validator.dart';

void main() {
  test('The password should be between 5 to 10 characters.', ()  {
    final passwordValidator = PasswordValidator();
    var myPassword = '123';
    var isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, false);

    myPassword = 'hello world how are you';
    isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, false);

    myPassword = '80143955';
    isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, true);

  });

  test('The password should have numbers', ()  {
    final passwordValidator = PasswordValidator();
    var myPassword = 'abcde';
    var isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, false);

    myPassword = 'abcde2';
    isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, true);
  });

  test('The password should have letters', ()  {
    final passwordValidator = PasswordValidator();
    var myPassword = '123456';
    var isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, false);

    myPassword = '123456a';
    isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, true);

    myPassword = '123456A';
    isGoodPassword = passwordValidator.isGood(myPassword);
    expect(isGoodPassword, true);

  });
}