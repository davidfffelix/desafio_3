class Validators {
  static String? passwordValidate({
    String? password,
  }) {
    if (password == null || password.trim().isEmpty) {
      return 'This field is required';
    }
    if (password.trim().length < 6) {
      return 'Password must be at least 6 characters in length';
    }
    return null;
  }

  static String? confirmPasswordValidate({
    String? password,
    String? confirmPassword,
  }) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'This field is required';
    }
    if (confirmPassword != password) {
      return 'Confirmation password does not match the entered password';
    }
    return null;
  }

  static String? emailValidator({
    String? email,
    String? confirmEmail,
  }) {
    if (confirmEmail == null || confirmEmail.trim().isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r'\S+@\S+.\S+').hasMatch(confirmEmail)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? nameValidator({
    String? name,
    String? confirmName,
  }) {
    if (confirmName!.isEmpty ||
        !RegExp('[a-z A-Z]{10}').hasMatch(confirmName)) {
      return 'Enter correct name';
    } else {
      return null;
    }
  }
}
