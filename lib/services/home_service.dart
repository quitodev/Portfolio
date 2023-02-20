import 'dart:convert';

import 'package:http/http.dart' as http;

import '../domain/entities/portfolio.dart';
import '../domain/repositories/home_repository.dart';

class HomeService extends HomeRepository {
  @override
  Future<Portfolio?> getPortfolio() async {
    var client = http.Client();
    try {
      var response = await client.get(
        //Uri.http('localhost:5000', 'api/portfolio'),
        Uri.https('portfolioservicequitodev.onrender.com', 'api/portfolio'),
        headers: {
          "Access-Control-Allow-Origin": "*",
          'Content-Type': 'application/json',
          'Accept': '*/*'
        },
      );
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      var list = decodedResponse["portfolio"] as List;
      var map = list.first as Map;
      return Portfolio.fromJson(map);
    } catch (error) {
      return null;
    } finally {
      client.close();
    }
  }
}
