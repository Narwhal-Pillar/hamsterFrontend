import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
group('Distance Tests', () {
  test('Should render Distance', () {
    var instance = render((Distance()()));

    DistanceComponent component = getDartComponent(instance);

    var renderedComponent = findDomNode(component);

    expect(renderedComponent.toString(), 'span');
  });

  test('Should render Distance', () {
    var instance = render((Distance()..distance=1.0)());

    DistanceComponent component = getDartComponent(instance);

    var renderedComponent = findDomNode(component);

    expect(renderedComponent.text, '1 mile');
  });
});

}