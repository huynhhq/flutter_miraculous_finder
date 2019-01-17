import 'package:flutter_miraculous_finder/models/google_search_result.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<String> searchBaseData(String url) async {
    var baseResult = await http.Client().get(Uri.parse(url));
    return baseResult.body;
}

//Future<GoogleSearchResult> _search(String searchValue, int start) async {
//  final response = await client.get(Uri.parse("$baseUrl$searchValue"));
//  final results = json.decode(response.body);
//}
