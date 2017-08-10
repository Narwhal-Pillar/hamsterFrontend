import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main() {
  group('Price Range Tests', (){
    test('Should render Price Range Componet', () {
      var renderedInstance = render( (PriceRange()..priceRange=1)());

      PriceRangeComponent component = getDartComponent(renderedInstance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'span' ); 
    });

    test('Should render Price Range One', () {
      var renderedInstance = render((PriceRange()..priceRange=1)());

      PriceRangeComponent component = getDartComponent(renderedInstance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelectorAll('i').length, 1);
    });

   
    test('Should render Price Range Two', () {
      var renderedInstance = render( (PriceRange()..priceRange=2)());

      PriceRangeComponent component = getDartComponent(renderedInstance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelectorAll('i').length, 2);
    });
  });
}