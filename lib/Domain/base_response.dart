class BaseResponse {
  String statusCode;
  String message;
  dynamic data;

  BaseResponse({required this.statusCode, required this.message, this.data});
}