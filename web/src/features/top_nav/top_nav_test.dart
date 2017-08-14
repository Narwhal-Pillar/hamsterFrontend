import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group("Top nav comoponent test", () {
    test("Should render header", () {
       var renderedInstance = render(TopNav()());

       TopNavComponent component = getDartComponent(renderedInstance);

       var renderedComponent = findDomNode(component);

       expect(renderedComponent.querySelector('div > img').toString(), 'img');
       expect(renderedComponent.querySelector('div > h1').text, 'Hamster');
    });
  });
}