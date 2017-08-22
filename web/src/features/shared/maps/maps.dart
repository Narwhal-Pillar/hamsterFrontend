part of over_react.web.features.shared;

DirectionsRenderer directionsDisplay;
final directionsService = new DirectionsService();
GMap map;

@Factory()
UiFactory<MapsProps> Maps;

@Props()
class MapsProps extends UiProps {
  LatLng origin;
  LatLng destination;
}

@State()
class MapsState extends UiState {}

@Component()
class MapsComponent<T extends MapsProps, S extends MapsState>
    extends UiStatefulComponent<T, S> {
  @override
  getDefaultProps() => (newProps()
    ..origin = new LatLng(41.584272, -93.6356068)
    ..destination = new LatLng(41.5868039,-93.6229288));

  @override
  componentDidMount() {
    directionsDisplay = new DirectionsRenderer();
    final mapOptions = new MapOptions()
      ..zoom = 7
      ..center = props.origin
      ..zoomControl = false
      ..scaleControl = false;
    map = new GMap(document.getElementById('map-canvas'), mapOptions);
    directionsDisplay.map = map;
    final request = new DirectionsRequest()
      ..origin = props.origin
      ..destination = props.destination
      ..travelMode = TravelMode.WALKING;
    directionsService.route(request, (response, status) {
      if (status == DirectionsStatus.OK) {
        directionsDisplay.directions = response;
      }
    });
  }

  render() {
    return ((Dom.div()..id = "map-canvas")());
  }
}
