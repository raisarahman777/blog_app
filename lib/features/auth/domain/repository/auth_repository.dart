import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  //Method for signing up
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  //Method for logging in
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
