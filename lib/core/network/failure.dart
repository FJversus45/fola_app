// abstract class that uses exception
abstract class Failure implements Exception {
  // initializing parameters
  const Failure(this.message);
  // string
  final String message;
}

// class that extends Failure
class SignInFailure extends Failure {
  // calls the parents message
  SignInFailure(super.message);
}

// class that extends Failure
class ApiFailure extends Failure {
  // calls the parents message
  ApiFailure(super.message);
}

// class that uses failure
class SignUpFailure implements Failure {
  @override
  // string
  final String message;
  // initializing parameters
  const SignUpFailure(this.message);
}
