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
    double counter = this.props.rating;
    var classString = '';
    
    for(var i = 0; i < 5; i++) {
      classString = 'fa-star-o empty-star';
      
      if(counter >= 1) {
        classString = 'fa-star full-star';
        counter--;
      } else if(counter >=.5) {
        classString = 'fa-star-half-o half-star';
        counter -= 0.5;
      } 
      stars.add((Dom.i()..className='fa ${classString}'..key=i)());
    }
    return (Dom.span()(
      stars
    ));
  }
}