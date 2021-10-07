import 'dart:convert' as convert;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import '../../../model/search_param/search_param.dart';

import '../../../model/tip/tip.dart';
import 'tip.dart';

final tipDataSourceProvider =
    Provider<TipDataSource>((ref) => TipDataSourceImpl());

// sideId "all" == 3
class TipDataSourceImpl implements TipDataSource {
  @override
  Future<List<Tip>> getTips(SearchParam param) async {
    final queryParam = {
      'ability_id': param.abilityId == null ? '' : '${param.abilityId}',
      'map_id': param.mapId == null ? '' : '${param.mapId}',
      'side_id':
          param.sideId == null || param.sideId == 3 ? '' : '${param.sideId}',
    };
    var url =
        Uri.https("valorant-tips.herokuapp.com", '/api/v1/tip', queryParam);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.json.decode(response.body) as List<dynamic>;
      var tips = jsonResponse.map((i) => Tip.fromJson(i)).toList();
      return tips;
    } else {
      throw Exception('Failed');
    }
  }
}
