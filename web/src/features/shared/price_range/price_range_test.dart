import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main() {
  group('Price Range Tests', (){
    test('Should render Price Range Componet', () {
      var renderedInstance = render( PriceRange()());

      PriceRangeComponent component = getDartComponent(renderedInstance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'span' ); 
    });
  });
}