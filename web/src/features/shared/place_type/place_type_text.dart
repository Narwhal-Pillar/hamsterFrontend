part of over_react.web.features.shared;

@Factory()
UiFactory<PlaceTypeTextProps> PlaceTypeText;

@Props()
class PlaceTypeTextProps extends UiProps {
  String placeType;
}

@State()
class PlaceTypeTextState extends UiState {

}

@Component()
class PlaceTypeTextComponent<T extends PlaceTypeTextProps, S extends PlaceTypeTextState> extends UiStatefulComponent<T, S> {
  
  @override
  getDefaultProps() => (newProps()
    ..placeType = 'None Listed'
  );

  render() {
    return (Dom.span()(props.placeType));
  }
}


