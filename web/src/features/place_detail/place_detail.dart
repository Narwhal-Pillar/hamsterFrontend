part of over_react.web.features;

@Factory()
UiFactory<PlaceDetailsProps> PlaceDetails;

@Props()
class PlaceDetailsProps extends UiProps {

}

@State()
class PlaceDetailsState extends UiState {

}

@Component()
class PlaceDetailsComponent<T extends PlaceDetailsProps, S extends PlaceDetailsState> extends UiStatefulComponent<T,S> {
  render() {
    return Dom.div()();
  }
}