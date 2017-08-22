part of over_react.web.features;

@Factory()
UiFactory<AppContainerProps> AppContainer;

@Props()
class AppContainerProps extends UiProps {}

@State()
class AppContainerState extends UiState {
  String name;
  String foodType;
  String imageUrl;
  double rating;
  int price;
  double distance;
  num latitude;
  num longitude;


}

@Component()
class AppContainerComponent<T extends AppContainerProps,
S extends AppContainerState> extends UiStatefulComponent<T, S> {
  var url = 'https://hamster-wheel.herokuapp.com/places';

  getLocation() {
    try {
      return window.navigator.geolocation.getCurrentPosition()
          .then((Geoposition position) {
        setState(newState()
          ..latitude = position.coords.latitude
          ..longitude = position.coords.longitude);
      });
    } catch (err) {
      setState(newState()
        ..latitude = 41.5842007
        ..longitude = -93.6354468);
    }
    return new Future(() {});
  }

  getPlaceDetails() {
    var urlWithLocationParameters = url +
        "?location=${state.latitude},${state.longitude}";
    return HttpRequest.getString(urlWithLocationParameters).then((response) {
      setPlaceDetails(JSON.decode(response));
    });
  }

  setPlaceDetails(placeDetails) {
    setState(newState()
      ..name = placeDetails[0]["Name"]
      ..imageUrl = placeDetails[0]["ImageUrl"]
      ..foodType = placeDetails[0]["FoodType"]
      ..price = placeDetails[0]["Price"]
      ..rating = placeDetails[0]["Rating"]
      ..distance = placeDetails[0]["Distance"]);
  }

  @override
  componentDidMount() {
    getLocation().then((_) {
      getPlaceDetails();
    });
  }

  render() {
    if (state.name == null) {
      return ((Dom.div()
        ..className = "row")((Dom.div()
        ..className = "col-md-12")(
          (TopNav())(),
          Dom.h2()("Loading"))));
    }

    return ((Dom.div()
      ..className = "row")((Dom.div()
      ..className = "col-md-12")(
        (TopNav())(),
        (PlaceDetails()
          ..imageUrl = state.imageUrl
          ..restaurantName = state.name
          ..foodType = state.foodType
          ..rating = state.rating
          ..price = state.price
          ..distance = state.distance)(),
        Maps()())));
  }
}
