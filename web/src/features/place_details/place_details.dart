part of over_react.web.features;

@Factory()
UiFactory<PlaceDetailsProps> PlaceDetails;

@Props()
class PlaceDetailsProps extends UiProps {
  String restaurantName;
  String imageUrl;
  String type;
  int price;
  double rating;
}

@State()
class PlaceDetailsState extends UiState {}

@Component()
class PlaceDetailsComponent<T extends PlaceDetailsProps, S extends PlaceDetailsState> extends UiStatefulComponent<T,S> {
  render() {
    return ((Dom.div()..className="placeDetails well")(
      ((Banner()
        ..restaurantName=props.restaurantName
        ..imageUrl=props.imageUrl
      )
      ()),
      ((Dom.ul()..className="list-unstyled place-details")(
        ((Dom.li()..name="type")(
          (Dom.label()("Type: ")), (PlaceTypeText()..placeType=this.props.type)()
        )),
        ((Dom.li()..name="price")(
          (Dom.label()("Price: ")), (PriceRange()..priceRange=this.props.price)()
        )),
        ((Dom.li()..name="rating")(
          (Dom.label()("Rating: ")), (Rating()..rating=this.props.rating)()
        ))
      ))
    ));
  }
}