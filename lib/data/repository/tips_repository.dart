import '../../model/search_param/search_param.dart';

import '../../model/tip/tip.dart';

mixin TipRepository {
  Future<List<Tip>> getTips(SearchParam param);
}
