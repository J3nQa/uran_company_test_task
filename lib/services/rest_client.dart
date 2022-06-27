import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uran_company_test_task/models/exhibit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://my-json-server.typicode.com/Reyst/exhibit_db/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/list")
  Future<List<Exhibit>> getExhibitList();
}
