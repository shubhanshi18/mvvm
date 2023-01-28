class AppException implements Exception{
 late final  _message;
 late final _prefix;
 AppException(this._message,this._prefix);

 String toString(){
   return '$_prefix$_message';
 }


}

class FetchDataException extends AppException{
  FetchDataException([String?message]) : super(message,'Error during communication');

}


class BadRequetsException extends AppException{
  BadRequetsException([String?message]) : super(message,'invalid request');

}


class UnauthorizedException extends AppException{
  UnauthorizedException([String?message]) : super(message,'Unauthorized request');

}


class InvalidInputException extends AppException{
  InvalidInputException([String?message]) : super(message,'invalid input');

}