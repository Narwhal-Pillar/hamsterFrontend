import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group('Hello World Component Tests', () {
    test('Should be True', () {
      expect(true, true);
    });

    test('Should say Hello World!', () {
      var renderedInstance = render((HelloWorld()
        ..message = "Hello World!"
      )());

      HelloWorldComponent component = getDartComponent(renderedInstance);

      var renderedComponent = findDomNode(component);
      expect(renderedComponent.text, 'Hello World!');
    });
  });
}