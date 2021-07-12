import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/stage/stage.dart';
import '../remote/map/map.dart';
import '../remote/map/map_impl.dart';
import 'map_repository.dart';

final mapRepositoryProvider = Provider(
    (ref) => MapRepositoryImpl(dataSource: ref.read(mapDataSourceProvider)));

class MapRepositoryImpl implements MapRepository {
  MapRepositoryImpl({required MapDataSource dataSource})
      : _dataSource = dataSource;

  final MapDataSource _dataSource;

  @override
  Future<List<Stage>> getMaps() async {
    return _dataSource.getMaps();
  }
}
