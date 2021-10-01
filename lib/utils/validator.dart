class InputValidators {
  // Change to Validators
  static final emailScheme = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final usernameScheme = RegExp(r'^(?![\s.]+$)[a-zA-Z\s.]*$');
  static final phoneNumScheme =
      RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');

  static emailAddressValidator(String email) {
    if (email.isEmpty) return "Email must not be empty.";
    if (!emailScheme.hasMatch(email)) {
      return "Invalid email address.";
    }
    return null;
  }

  static passwordValidator(String password) {
    if (password.isEmpty) return "Password must not be empty.";
    if (password.length < 8) return "Password must have at least 8 characters.";
    return null;
  }

  static confirmPasswordValidator(String password, String confirmPassword) {
    if (confirmPassword.isEmpty) return 'Confirm password must not be empty.';
    if (password != confirmPassword) {
      return 'The confirm password confirmation does not match.';
    }
    return null;
  }

  static currentPasswordValidator(String password) {
    if (password.isEmpty) return "Current password must not be empty.";
    return null;
  }

  static usernameValidator(String username) {
    if (username.isEmpty) return "Username must not be empty.";

    if (!usernameScheme.hasMatch(username)) {
      return "Name must not contain the special characters and numbers.";
    }
    return null;
  }

  static phoneValidator(String phone) {
    if (phone.isEmpty) return 'Phone number must not be empty.';

    if (!phoneNumScheme.hasMatch(phone)) {
      return 'Invalid phone number.';
    }

    return null;
  }
}
