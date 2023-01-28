import 'package:mvvmsample/data/response/status.dart';
import 'package:mvvmsample/models/movies_model.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status,this.data,this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(MovieListModel value) : status = Status.COMPLETED;
  ApiResponse.error(String string) : status = Status.ERROR;

  String toString(){
    return "status: $status \n Message : $message\n Data: $data";
  }
}