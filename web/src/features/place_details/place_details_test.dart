import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group("Place Detail Tests", () {
    test("Should render Place Detail", () {
      var instance = render((PlaceDetails()
        ..foodType='Mexican'
        ..rating=3.3
        ..price=1
        ..distance=1.7)());

      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'div');
    });

    test("Should display food type", () {
      var instance = render((PlaceDetails()
        ..foodType='Italian'
        ..rating=3.3
        ..price=1
        ..distance=1.7)());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=food-type]').text, 'Food Type: Italian');
    });

    test("Should display price", () {
      var instance = render((PlaceDetails()
        ..foodType='Mexican'
        ..rating=3.3
        ..price=1
        ..distance=1.7)());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=price]').text, 'Price: ');
    });

    test("Should display rating", () {
      var instance = render((PlaceDetails()
        ..foodType='Mexican'
        ..rating=3.3
        ..price=1
        ..distance=1.7)());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=rating]').text, 'Rating: ');
    });

    test("Should display distance", () {
      var instance = render((PlaceDetails()
        ..foodType='Mexican'
        ..rating=3.3
        ..price=1
        ..distance=1.3)());
      
      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);
      
      expect(renderedComponent.querySelector('[name=distance]').text, 'Distance: 1.3 miles');
    });

    test("Should display details from a Jimmy Johns from The Forge", (){
      var instance = render((PlaceDetails()
        ..foodType='Sandwich'
        ..rating=3.3
        ..price=1
        ..distance=1.7
      )());

      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('[name=food-type]').text, 'Food Type: Sandwich');
      expect(renderedComponent.querySelector('[name=price]').children[1].children.length, 1);
      expect(renderedComponent.querySelector('[name=rating]').children[1].children.length, 5);
      expect(renderedComponent.querySelector('[name=distance]').text, 'Distance: 1.7 miles');
    });
  });
}