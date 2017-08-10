import 'dart:html';
import 'src/features.dart';
import 'package:over_react/over_react.dart';
import 'package:react/react_client.dart' show setClientConfiguration;
import 'package:react/react_dom.dart' as react_dom;

void main() {
  setClientConfiguration();

  react_dom.render((HelloWorld()..message="Hello World!")(), querySelector('.hello-world'));
  react_dom.render(AppContainer()(), querySelector('.app-container'));
}
