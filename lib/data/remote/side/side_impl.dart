import 'dart:convert' as convert;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../model/side/side.dart';
import 'side.dart';

final sideDataSourceProvider =
    Provider<SideDataSource>((ref) => SideDataSourceImpl());

class SideDataSourceImpl implements SideDataSource {
  @override
  Future<List<Side>> getSides() async {
    print('fetch start');
    var url = Uri.https(
        "valorant-tips.herokuapp.com", '/api/v1/side', {'q': '{http'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.json.decode(response.body) as List<dynamic>;
      var sides = jsonResponse.map((i) => Side.fromJson(i)).toList();
      return sides;
    } else {
      throw Exception('Failed');
    }
  }
}
