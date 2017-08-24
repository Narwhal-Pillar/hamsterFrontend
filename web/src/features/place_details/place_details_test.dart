import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../../features.dart';

void main() {
  group("Place Detail Tests", () {
    test("Should render Place Detail", () {
      var instance = render((PlaceDetails()
        ..type='Mexican'
        ..rating=3.3
        ..price=1)());

      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'div');
    });

    test("Should display details from a Jimmy Johns from The Forge", (){
      var instance = render((PlaceDetails()
        ..type='Sandwich'
        ..rating=3.3
        ..price=1
        ..restaurantName="Jimmy John's"
        ..imageUrl="http://via.placeholder.com/350x150"
      )());

      PlaceDetailsComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.firstChild.toString(), 'div');
      expect(renderedComponent.querySelector('[name=type]').text, 'Type: Sandwich');
      expect(renderedComponent.querySelector('[name=price]').children[1].children.length, 1);
      expect(renderedComponent.querySelector('[name=rating]').children[1].children.length, 5);
    });
  });
}