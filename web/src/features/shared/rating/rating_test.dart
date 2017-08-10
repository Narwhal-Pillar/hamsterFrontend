import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import '../shared.dart';

void main(){
  group('Rating tests', () {
    test('Should render rating component', () {
      var instance = render((Rating()..rating=0.0)());
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.toString(), 'span');
    });

    test('Should render five stars', () {
      var instance = render((Rating()..rating=0.0)());
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.children.length, 5);
    });

    test('Should render five stars', () {
      var instance = render((Rating()..rating=0.0)());
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.children.length, 5);
    });

    test('Should render 0 star rating', () {
      var instance = render((Rating()..rating=0.0));
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelectorAll('.full-star').length, 0);
      expect(renderedComponent.querySelectorAll('.half-star').length, 0);
      expect(renderedComponent.querySelectorAll('.empty-star').length, 5);
    });

    test('Should render 3.2 star rating', () {
      var instance = render((Rating()..rating=3.2));
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelectorAll('.full-star').length, 3);
      expect(renderedComponent.querySelectorAll('.half-star').length, 0);
      expect(renderedComponent.querySelectorAll('.empty-star').length, 2);
    });

    test('Should render 3.7 star rating', () {
      var instance = render((Rating()..rating=3.7));
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);


      expect(renderedComponent.querySelectorAll('.full-star').length, 3);
      expect(renderedComponent.querySelectorAll('.half-star').length, 1);
      expect(renderedComponent.querySelectorAll('.empty-star').length, 1);
    });

    test('Should render 4.9 star rating', () {
      var instance = render((Rating()..rating=4.9));
      RatingComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);


      expect(renderedComponent.querySelectorAll('.full-star').length, 4);
      expect(renderedComponent.querySelectorAll('.half-star').length, 1);
      expect(renderedComponent.querySelectorAll('.empty-star').length, 0);
    });


  });
}