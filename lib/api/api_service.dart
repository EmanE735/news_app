import 'dart:convert';

import 'package:news_app/api/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/sources_responce/sources_responce.dart';

class ApiService {
  static Future<SourcesResponce> getSource(String categoryId) async {
    final uri = Uri.https(ApiConstants.baseURL, ApiConstants.sourcesEndpoint,
        {'apiKey': ApiConstants.apiKey,
        'category': categoryId,});


    final responce = await http.get(uri);
    final json = jsonDecode(responce.body);
     return SourcesResponce.fromJson(json);
  }
}
