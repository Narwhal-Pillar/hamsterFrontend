import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('Distance Tests', () {
    test('Should render Distance', () {
      var instance = render((Distance()..distance=1.0)());
      DistanceComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'span');
    });

    test('Should render Distance of 1.0', () {
      var instance = render((Distance()..distance=1.0)());
      DistanceComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, '1 mile');
    });

    test('Should render Distance of 3.0', () {
      var instance = render((Distance()..distance=3.0)());
      DistanceComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, '3 miles');
    });

    test('Should render Distance of 3.84', () {
      var instance = render((Distance()..distance=3.84)());
      DistanceComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, '3.84 miles');
    });

    test('Should render Distance of 0.84', () {
      var instance = render((Distance()..distance=0.84)());
      DistanceComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, '0.84 mile');
    });
  });
}