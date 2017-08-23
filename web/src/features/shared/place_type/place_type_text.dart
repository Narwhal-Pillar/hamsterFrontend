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
  
  filterPlaceType(String placeTypeList) {
    var filteredList = [];
    var list = placeTypeList.split(",");
    for (var element in list) {
      var acceptedTypes = ['restaurant', 'food'];
      if (acceptedTypes.contains(element.toLowerCase().trim())) {
        filteredList.add(element.trim());
      }
    }
    return filteredList.join(', ');
  }

  @override
  getDefaultProps() => (newProps()
    ..placeType = ''
  );

  render() {
    return (Dom.span()(filterPlaceType(props.placeType)));
  }
}


