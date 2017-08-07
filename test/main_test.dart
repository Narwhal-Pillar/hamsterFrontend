@TestOn('browser')
import 'package:over_react/over_react.dart';
import 'package:react/react_dom.dart';
import 'package:react/react_client.dart';
import 'package:test/test.dart';

import '../web/src/features/hello_world/hello_world_test.dart' as helloWorld;


void main() {
  setClientConfiguration();

  helloWorld.main();
}
