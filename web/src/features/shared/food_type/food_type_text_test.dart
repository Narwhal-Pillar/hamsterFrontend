import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('Food Type Tests', () {
    test('Should render Food Type component', () {
      var instance = render((FoodTypeText()..foodType='Asian')());

      FoodTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Asian');
    });

    test('Should return passed single food type as text', () {
      var instance = render((FoodTypeText()..foodType='Mexican')());
      
      FoodTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'Mexican');  
    });

    test('Should return default property if no food type is passed',(){
      var instance = render((FoodTypeText())());

      FoodTypeTextComponent component = getDartComponent(instance);

      var renderedComponent = findDomNode(component);

      expect(renderedComponent.text, 'None Listed');
    });
  });
}