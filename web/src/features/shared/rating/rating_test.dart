import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('Rating tests', () {
    test('Should render rating component', () {
      var instance = render((Rating())());

      RatingComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'span');
    });

     test('Should render five stars', () {
      var instance = render((Rating())());

      RatingComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.children.length, 5);
    });
  });
}