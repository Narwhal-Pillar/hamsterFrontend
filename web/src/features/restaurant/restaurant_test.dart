import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';


void main() {
  group("Restaurant Details", () {
    test("Should show restaurant details", () {
      var instance render(Restaurant()());
      
      RestaurantComponent dartComponent = getDartComponent(instance);
      
      var component = findDomNode(dartComponent);
      expect(component.querySelector('[name=restaurant]').text, "Smokey D's BBQ");
    });
  });
}