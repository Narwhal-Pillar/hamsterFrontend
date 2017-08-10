import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group("Top Nav Tests", () {
    test('Should render top_nav component', () {
      var instance = render(AppContainer()());

      AppContainerComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('div > div > h1').text, 'Hamster');
    });
  });
}