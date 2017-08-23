import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('place Type Tests', () {
    test('Should render place Type component', () {
      var instance = render((PlaceTypeText()..placeType='Restaurant')());

      PlaceTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Restaurant');
    });

    test('Should return passed single place type as text', () {
      var instance = render((PlaceTypeText()..placeType='Restaurant, Food')());
      PlaceTypeTextComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Restaurant, Food');  
    });

    test('Should return default property if no place type is passed',(){
      var instance = render((PlaceTypeText())());
      PlaceTypeTextComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, '');
    });

    test('Should only return restaurant place type', () {
      var instance = render((PlaceTypeText()..placeType='Restaurant,Something Unwanted, Other Crap')());
      PlaceTypeTextComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Restaurant');

    });
  });
}