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
    return (Dom.div()(
      (Dom.ul()(
        ((Dom.li()..name="food-type")(
          (Dom.label()("Food Type: ")), (FoodTypeText()..foodType="Italian")()
        )),
        ((Dom.li()..name="price")(
          (Dom.label()("Price: ")), (PriceRange()..priceRange=4)()
        )),
        ((Dom.li()..name="rating")(
          (Dom.label()("Rating: ")), (Rating()..rating=4.5)()
        ))
      ))
    ));
  }
}