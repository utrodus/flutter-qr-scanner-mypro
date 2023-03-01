import 'validator_pattern.dart';

class ValidatorUtils {
  bool isUrlValid(var url) => urlPattern.hasMatch(url.toString().toLowerCase());
  bool isEmailValid(var email) =>
      emailPattern.hasMatch(email.toString().toLowerCase());
  bool isPhoneNumberValid(var phoneNumber) =>
      phoneNumberPattern.hasMatch(phoneNumber.toString().toLowerCase());
  bool isLocationValid(var location) =>
      locationPattern.hasMatch(location.toString().toLowerCase());
}
