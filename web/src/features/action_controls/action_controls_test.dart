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

    test('Should contain two buttons', () {
      var instance = render(ActionControls()());
      ActionControlsComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelectorAll('button').length, 2);
    });

    test('Buttons should render text nodes with action message', () {
      var instance = render(ActionControls()());
      ActionControlsComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.firstChild.text, 'Next');
      expect(renderedComponent.lastChild.text, "Let's Go!");
    });

    test('Clicking the button should perform an action', () {
      var flag = false;
      var instance = render((ActionControls()
        ..nextBtnOnClickEvent = () {
          flag = true;
        })());
      ActionControlsComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      click(renderedComponent.firstChild.firstChild);

      expect(flag, isTrue);
    });
  });
}
