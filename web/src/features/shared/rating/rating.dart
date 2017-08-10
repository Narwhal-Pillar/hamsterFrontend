 part of over_react.web.features.shared;

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
    var classString = '';
    for(var i = 0; i < 5; i++) {
      classString = 'fa-star-o empty-star';
      
      if(x >= 1) {
        classString = 'fa-star full-star';
        x--;
      } else if(x >=.5) {
        classString = 'fa-star-half-o half-star';
        x -= 0.5;
      } 
      stars.add((Dom.i()..className='fa ${classString}'..key=i)());
    }
    return (Dom.span()(
      stars
    ));
  }
}