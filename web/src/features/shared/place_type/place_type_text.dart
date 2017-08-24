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
    var list = placeTypeList.split(", ");
    for (var element in list) {
      var acceptedTypes = ['bakery', 'bar', 'cafe', 'meal_delivery', 'restaurant'];
      if (acceptedTypes.contains(element.toLowerCase().trim())) {
        filteredList.add(filterCamelCase(element));
      }
    }
    return filteredList.join(', ');
  }

  filterCamelCase(incomingString){
    var stringWordList = incomingString.split('_');
    var camelCaseString = [];
    for (var word in stringWordList){
      var trimmedWord = word.trim();
      camelCaseString.add('${trimmedWord[0].toUpperCase()}${trimmedWord.substring(1).toLowerCase()}');
    }

    return camelCaseString.join(' ');
  }

  @override
  getDefaultProps() => (newProps()
    ..placeType = ''
  );

  render() {
    return (Dom.span()(filterPlaceType(props.placeType)));
  }
}


