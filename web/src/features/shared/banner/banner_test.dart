import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main() {
  group('Banner Test', () {
    test('Should render Banner', () {
      var instance = render(Banner()());
      BannerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'div');
    });

    test('Should display Jim\'s Johns.', (){
      var instance = render((Banner()..restaurantName="Jim's Johns")());
      BannerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('h1').text, "Jim's Johns");
    });

    test('Should display Pizza Ranch', (){
      var instance = render((Banner()..restaurantName="Pizza Ranch")());
      BannerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('h1').text, "Pizza Ranch");
    });

    test('Should display image', () {
      var instance = render((Banner()
        ..restaurantName="Taste of Italy" 
        ..imageUrl="http://via.placeholder.com/350x150"
      )());
      
      BannerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.style.backgroundImage, "url(http://via.placeholder.com/350x150)");
    });
  });
  
}