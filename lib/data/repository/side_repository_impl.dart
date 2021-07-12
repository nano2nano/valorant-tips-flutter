import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/side/side.dart';
import '../remote/side/side.dart';
import '../remote/side/side_impl.dart';
import 'side_repository.dart';

final sideRepositoryProvider = Provider(
    (ref) => SideRepositoryImpl(dataSource: ref.read(sideDataSourceProvider)));

class SideRepositoryImpl implements SideRepository {
  SideRepositoryImpl({required SideDataSource dataSource})
      : _dataSource = dataSource;

  final SideDataSource _dataSource;

  @override
  Future<List<Side>> getSides() async {
    return _dataSource.getSides();
  }
}
