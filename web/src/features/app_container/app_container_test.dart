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

  test('Should render place details', () {
    var instance = render(AppContainer()());
    AppContainerComponent component = getDartComponent(instance);
    var renderedComponent = findDomNode(component);

    print(renderedComponent.children[0].children[1].className);
    
    expect(renderedComponent.children[0].children[1].className.contains('placeDetails'), true);
  });
}