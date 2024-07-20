import 'package:bookly/core/error/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/books/books.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo
{
  final api_service apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<failure, List<Books>>> featch_best_seller()async
  {
    try {
      var data=await apiService.get(endPoints: "volumes?Filtering=free-ebooks&q=subject:&Sorting=newest");
      List<Books> books=[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      return left(server_error(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<Books>>> fecatch_all_books()async {
    try {
      var data=await apiService.get(endPoints: "volumes?Filtering=free-ebooks&q=subject:");
      List<Books> books=[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      return left(server_error(e.toString()));
    }
  }

}
