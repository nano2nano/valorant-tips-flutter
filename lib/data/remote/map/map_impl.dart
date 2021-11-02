import 'dart:convert' as convert;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../model/stage/stage.dart';
import 'map.dart';

final mapDataSourceProvider =
    Provider<MapDataSource>((ref) => MapDataSourceImpl());

class MapDataSourceImpl implements MapDataSource {
  @override
  Future<List<Stage>> getMaps() async {
    final url =
        Uri.https('valorant-api.com', '/v1/maps', {'language': "ja-JP"});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = convert.json.decode(response.body);
      final data = jsonResponse["data"] as List<dynamic>;
      final maps = data.map((e) => Stage.fromJson(e)).toList();
      return maps;
    } else {
      throw Exception('Failed to fetch maps');
    }
  }
}
