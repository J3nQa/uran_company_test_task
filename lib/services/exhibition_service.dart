import 'package:dio/dio.dart';
import 'package:uran_company_test_task/models/exhibit.dart';
import 'package:uran_company_test_task/services/rest_client.dart';

class ExhibitionService {
  final RestClient restClient = RestClient(Dio());

  Future<List<Exhibit>> getExhibitList() async {
    // Emulate long loading
    await Future.delayed(const Duration(seconds: 2));
    return await restClient.getExhibitList();
  }
}
