import 'package:dio/dio.dart';

class ApiService{
  final Dio dio;
  final baseUrl ="https://fakestoreapi.com/";
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint})async{
    var response= await dio.get("$baseUrl$endpoint");
    return response.data;
  }
}