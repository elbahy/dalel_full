class AuthStates {}

class AuthInitial extends AuthStates {}

class SignupLoadingState extends AuthStates {}

class SignupSucessState extends AuthStates {}

class SignupFailureState extends AuthStates {
  final String errorMessage;

  SignupFailureState({required this.errorMessage});
}
