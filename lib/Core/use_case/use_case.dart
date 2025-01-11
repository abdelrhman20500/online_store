import 'package:dartz/dartz.dart';
import '../../Feature/home/domain/Entities/category_entity.dart';
import '../errors/failure.dart';

abstract class UseCase<Type , Param>{
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam{}