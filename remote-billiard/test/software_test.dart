import 'package:remote_billiard/Player_login/Login_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EMAIL VALIDATION TESTS', () {
    test('Empty Email Test', () {
      var result = FieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });
    test('Invalid Email Test', () {
      var result = FieldValidator.validateEmail('abcgmail.com');
      expect(result, 'Enter Valid Email!');
    });

    test('Valid Email Test', () {
      var result = FieldValidator.validateEmail('amfshalha998@gmail.com');
      expect(result, "Email is valid");
    });
  });
  group('PASSWORD VALIDATION TESTS', () {
    test('Empty Password Test', () {
      var result = FieldValidator.validatePassword('');
      expect(result, 'Enter Password');
    });

    test('Invalid Password Test', () {
      var result = FieldValidator.validatePassword('123');
      expect(result, "Enter a password with more than 4 characters");
    });

    test('Valid Password Test', () {
      var result = FieldValidator.validatePassword('rtyu12345');
      expect(result, null);
    });
  });
  group('LOGIN VALIDATION TESTS', () {
    test('Invalid email and password test', () {
      var result1 = FieldValidator.loginValidation("", "");
      expect(result1, "email and password is not valid");
    });

    test('invalid password and valid email test ', () {
      var result2 =
          FieldValidator.loginValidation("amfshalha998@gmail.com", "234");
      expect(result2, "password is not valid");
    });

    test('invalid email and valid password test  ', () {
      var result3 = FieldValidator.loginValidation("abcgmail.com", "rtyu12345");
      expect(result3, "Email is not valid");
    });

    test('Valid email and password test', () {
      var result4 =
          FieldValidator.loginValidation("amfshalha998@gmail.com", "rtyu12345");
      expect(result4, "email and password is valid");
    });
  });
}
