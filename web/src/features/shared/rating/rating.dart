part of over_react.web.feature.shared;

@Factory()
UiFactory<RatingProps> Rating;

@Props()
class RatingProps extends UiProps {
  
}

@State()
class RatingState extends UiState {
  
}

@Component()
class RatingComponent<T extends RatingProps, S extends RatingState> extends UiStatefulComponent<T, S> {
  render() {
    return (Dom.span()(
      (Dom.i()..className='fa fa-star-o')(),
      (Dom.i()..className='fa fa-star-o')(),
      (Dom.i()..className='fa fa-star-o')(),
      (Dom.i()..className='fa fa-star-o')(),
      (Dom.i()..className='fa fa-star-o')()
    ));
  }
}