class InputValidator {
  // Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide your email address.';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  // Validate Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please create a password.';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    return null;
  }

  // Confirm Password
  static String? confirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password.';
    }
    if (value != password) {
      return 'Passwords do not match. Please try again.';
    }

    return null;
  }

  // Validate Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid phone number.';
    }
    final phoneRegex = RegExp(r'^\+?[1-9]\d{1,14}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number with the correct format.';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your full name.';
    }
    final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegex.hasMatch(value)) {
      return 'Name can only contain letters and spaces.';
    }

    return null;
  }

  // Validate Field (generalized for any field)
  static String? validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'The $fieldName field cannot be left empty.';
    }
    return null;
  }

  // Validate Username-->>
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a username.';
    }
    final usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!usernameRegex.hasMatch(value)) {
      return 'Username can only contain letters, numbers, and underscores.';
    }

    return null;
  }

  // Validate URL--->>
  static String? validateURL(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid URL.';
    }
    final urlRegex = RegExp(
      r'^(https?:\/\/)?([a-z0-9\-]+\.)+[a-z]{2,6}(\/[a-z0-9\-]+)*\/?$',
    );
    if (!urlRegex.hasMatch(value)) {
      return 'Please enter a valid URL';
    }

    return null;
  }
}
