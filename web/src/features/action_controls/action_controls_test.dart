import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group('Action Controls', () {
    test('Should render action controls component', () {
      var instance = render(ActionControls()());
      ActionControlsComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.toString(), 'div');
    });
  });
}