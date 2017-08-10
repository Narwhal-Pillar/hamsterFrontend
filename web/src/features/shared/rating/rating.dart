part of over_react.web.feature.shared;

@Factory()
UiFactory<RatingProps> Rating;

@Props()
class RatingProps extends UiProps {
  double rating;
}

@State()
class RatingState extends UiState {
  
}

@Component()
class RatingComponent<T extends RatingProps, S extends RatingState> extends UiStatefulComponent<T, S> {
  render() {
    List stars = [];
    double x = this.props.rating;
    for(var i = 0; i < 5; i++) {
      if(x >= 1) {
        stars.add((Dom.i()..className='fa fa-star full-star')());
        x--;
      } else if(x >=.5) {
        stars.add((Dom.i()..className='fa fa-star-half-o empty-star')());
        x -= 0.5;
      } else {
        stars.add((Dom.i()..className='fa fa-star-o empty-star')());
      }
    }
    return (Dom.span()(
      stars
    ));
  }
}