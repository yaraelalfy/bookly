import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<failure,List<Books>>> fecatch_all_books();
  Future<Either<failure,List<Books>>> featch_best_seller();

  /*
  Either<int,String>add();//in right it will return string ,in left it return int

   */
}
