class Validators {
  static String? passwordValidator({
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

  static String? emailValidator({
    String? email,
  }) {
    if (email == null || email.trim().isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r'\S+@\S+.\S+').hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? nameValidator({
    String? name,
  }) {
    if (name!.isEmpty || !RegExp('[a-z A-Z]{10}').hasMatch(name)) {
      return 'Enter correct name';
    } else {
      return null;
    }
  }

  static String? cpfValidator({
    String? cpf,
  }) {
    if (cpf!.isEmpty ||
        !RegExp("[0-9]{3}[.]?[0-9]{3}[.]?[0-9]{3}[-]?[0-9]{2}").hasMatch(cpf)) {
      return 'Enter correct CPF';
    } else {
      return null;
    }
  }

  static String? telephoneValidator({
    String? telephone,
  }) {
    if (telephone == null || telephone.trim().isEmpty) {
      return 'Please enter your telephone';
    }
    if (telephone.trim().length < 11) {
      return 'Please enter your telephone correct';
    }
    return null;
  }
}