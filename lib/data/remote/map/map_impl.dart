import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/stage/stage.dart';
import 'map.dart';

final mapDataSourceProvider =
    Provider<MapDataSource>((ref) => MapDataSourceImpl());

class MapDataSourceImpl implements MapDataSource {
  @override
  Future<List<Stage>> getMaps() async {
    final snapshot = await FirebaseFirestore.instance.collection('maps').get();

    return snapshot.docs.map<Stage>((element) {
      return Stage(id: element.id, name: element.data()['name']);
    }).toList();
  }
}
