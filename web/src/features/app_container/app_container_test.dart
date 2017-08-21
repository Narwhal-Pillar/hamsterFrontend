import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'dart:async';
// import 'package:http/testing.dart';
import 'dart:convert';
import '../../features.dart';

void main() {
  group("Top Nav Tests", () {
    test('Should render top_nav component', () {
      var instance = render(AppContainer()());
      AppContainerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('div > div > h1').text, 'Hamster');
    });
  });

  group("PlaceDetails Tests", () {
    test('Should render place details', () {
      var instance = render(AppContainer()());
      AppContainerComponent component = getDartComponent(instance);
      var renderedComponent = findDomNode(component);

      expect(renderedComponent.querySelector('h2').text, "Loading");

    });

    test('Should change state when update place details is called', ()  async {
      var instance = render(AppContainer()());
      AppContainerComponent component = getDartComponent(instance);

      await component.getPlaceDetails();

      expect(component.state.name.isNotEmpty, true);
      expect(component.state.imageUrl.isNotEmpty, true);
      expect(component.state.foodType.isNotEmpty, true);
      expect(component.state.price.isNaN, false);
      expect(component.state.rating.isNaN, false);
      expect(component.state.distance.isNaN, false);
    });
  });

  group("Location Tests", () {
    test("Should return valid latitude and longitude numbers", () async {
      var instance = render(AppContainer()());

      AppContainerComponent component = getDartComponent(instance);

      await component.getLocation();

      RegExp exp = new RegExp(r"^(\-?\d+(\.\d+)?)$");

      expect(exp.hasMatch(component.state.latitude.toString()), true);
      expect(exp.hasMatch(component.state.longitude.toString()), true);
    });
  });
}
