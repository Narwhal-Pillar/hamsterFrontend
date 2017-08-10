@TestOn('browser')
import 'package:over_react/over_react.dart';
import 'package:react/react_dom.dart';
import 'package:react/react_client.dart';
import 'package:test/test.dart';

import '../web/src/features/hello_world/hello_world_test.dart' as hello_world;
import '../web/src/features/top_nav/top_nav_test.dart' as top_nav;
import '../web/src/features/app_container/app_container_test.dart' as app_container;


void main() {
  setClientConfiguration();

  hello_world.main();
  top_nav.main();
  app_container.main();
}
