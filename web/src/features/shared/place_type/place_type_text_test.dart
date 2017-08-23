import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('place Type Tests', () {
    test('Should render place Type component', () {
      var instance = render((PlaceTypeText()..placeType='Asian')());

      PlaceTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Asian');
    });

    test('Should return passed single place type as text', () {
      var instance = render((PlaceTypeText()..placeType='Mexican')());
      
      PlaceTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Mexican');  
    });

    test('Should return default property if no place type is passed',(){
      var instance = render((PlaceTypeText())());

      PlaceTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'None Listed');
    });
  });
}