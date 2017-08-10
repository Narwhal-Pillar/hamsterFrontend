@TestOn('browser')
import 'package:over_react/over_react.dart';
import 'package:react/react_client.dart';
import 'package:test/test.dart';

import '../web/src/features/hello_world/hello_world_test.dart' as hello_world;
import '../web/src/features/top_nav/top_nav_test.dart' as top_nav;
import '../web/src/features/app_container/app_container_test.dart' as app_container;
import '../web/src/features/shared/food_type/food_type_text_test.dart' as food_type_text;
import '../web/src/features/shared/price_range/price_range_test.dart' as price_range;
import '../web/src/features/shared/rating/rating_test.dart' as rating;

void main() {
  setClientConfiguration();

  hello_world.main();
  top_nav.main();
  app_container.main();
  food_type_text.main();
  price_range.main();
  rating.main();
}
