part of over_react.web.features.shared;

@Factory()
UiFactory<FoodTypeTextProps> FoodTypeText;

@Props()
class FoodTypeTextProps extends UiProps {
  String foodType;
}

@State()
class FoodTypeTextState extends UiState {

}

@Component()
class FoodTypeTextComponent<T extends FoodTypeTextProps, S extends FoodTypeTextState> extends UiStatefulComponent<T, S> {
  
  @override
  getDefaultProps() => (newProps()
    ..foodType = 'None Listed'
  );

  render() {
    return (Dom.span()(props.foodType));
  }
}


