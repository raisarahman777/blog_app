import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  //Method for signing up
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  //Method for logging in
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
