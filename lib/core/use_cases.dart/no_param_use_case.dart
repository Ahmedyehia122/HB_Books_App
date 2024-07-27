import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class NoParamUseCase<Type> {
  Future<Either<Failure, Type>> call();
}