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
    final mapId = param.mapId;
    final queryParam = {
      'ability_id': param.abilityId == null ? '' : '${param.abilityId}',
      'map_id': mapId == null ? '' : getId(uuid: mapId),
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

  String getId({required String uuid}) {
    print(uuid);
    switch (uuid) {
      case "7eaecc1b-4337-bbf6-6ab9-04b8f06b3319":
        // アセント
        return "1";
      case "d960549e-485c-e861-8d71-aa9d1aed12a2":
        // スプリット
        return "2";
      case "b529448b-4d60-346e-e89e-00a4c527a405":
        // フラクチャー
        return "7";
      case "2c9d57ec-4431-9c5e-2939-8f9ef6dd5cba":
        // バインド
        return "4";
      case "2fb9a4fd-47b8-4e7d-a969-74b4046ebd53":
        // ブリーズ
        return "6";
      case "e2ad5c54-4114-a870-9641-8ea21279579a":
        // アイスボックス
        return "5";
      case "2bee0dc9-4ffe-519b-1cbd-7fbe763a6047":
        // ヘイヴン
        return "3";
      case "ee613ee9-28b7-4beb-9666-08db13bb2244":
      // 射撃場
      default:
        throw Error();
    }
  }
}
