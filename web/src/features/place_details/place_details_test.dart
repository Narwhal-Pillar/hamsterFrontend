import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group("Place Detail Tests", () {
    test("Should render Place Detail", () {
      var instance = render(PlaceDetails()());

      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'div');
    });

    test("Should display food type", () {
      var instance = render(PlaceDetails()());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=food-type]').text, 'Food Type: Italian');
    });

    test("Should display price", () {
      var instance = render(PlaceDetails()());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=price]').text, 'Price: ');
    });
    
    test("Should display price", () {
      var instance = render(PlaceDetails()());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=price]').text, 'Price: ');
    });

    test("Should display rating", () {
      var instance = render(PlaceDetails()());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=rating]').text, 'Rating: ');
    });
  });
}