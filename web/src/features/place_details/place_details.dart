part of over_react.web.features;

@Factory()
UiFactory<PlaceDetailsProps> PlaceDetails;

@Props()
class PlaceDetailsProps extends UiProps {
  String restaurantName;
  String imageUrl;
  String foodType;
  int price;
  double rating;
  double distance; 
}

@State()
class PlaceDetailsState extends UiState {

}

@Component()
class PlaceDetailsComponent<T extends PlaceDetailsProps, S extends PlaceDetailsState> extends UiStatefulComponent<T,S> {
  render() {
    return ((Dom.div()..className="well")(
      ((Banner()
        ..restaurantName="Malo"
        ..imageUrl="http://www.littlelessonsinabigcity.com/wp-content/uploads/2014/06/malo_DSM-101.jpg"
      )
      ()),
      ((Dom.ul()..className="list-unstyled place-details")(
        ((Dom.li()..name="food-type")(
          (Dom.label()("Food Type: ")), (FoodTypeText()..foodType=this.props.foodType)()
        )),
        ((Dom.li()..name="price")(
          (Dom.label()("Price: ")), (PriceRange()..priceRange=this.props.price)()
        )),
        ((Dom.li()..name="rating")(
          (Dom.label()("Rating: ")), (Rating()..rating=this.props.rating)()
        )),
        ((Dom.li()..name="distance")(
          (Dom.label()("Distance: ")), (Distance()..distance=this.props.distance)()
        ))
      ))
    ));
  }
}