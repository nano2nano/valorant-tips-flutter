import '../../../model/search_param/search_param.dart';

import '../../../model/tip/tip.dart';

mixin TipDataSource {
  Future<List<Tip>> getTips(SearchParam param);
}
