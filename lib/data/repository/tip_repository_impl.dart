import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/search_param/search_param.dart';
import '../../model/tip/tip.dart';
import '../remote/tip/tip.dart';
import '../remote/tip/tip_impl.dart';
import 'tips_repository.dart';

final tipRepositoryProvider = Provider(
    (ref) => TipRepositoryImpl(dataSource: ref.read(tipDataSourceProvider)));

class TipRepositoryImpl implements TipRepository {
  TipRepositoryImpl({required TipDataSource dataSource})
      : _dataSource = dataSource;

  final TipDataSource _dataSource;

  @override
  Future<List<Tip>> getTips(SearchParam param) async {
    return _dataSource.getTips(param);
  }
}
