import 'package:dalal_full/features/auth/presentation/auth_cubit/auth_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());
  late String fName, lName, email, password;

  signupWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      emit(SignupLoadingState());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      emit(SignupSucessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailureState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailureState(
            errorMessage: 'The account already exists for that email.'));
      } else {
        emit(SignupFailureState(errorMessage: e.toString()));
      }
    } catch (e) {
      emit(SignupFailureState(errorMessage: e.toString()));
    }
  }
}
