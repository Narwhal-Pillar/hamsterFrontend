 part of over_react.web.features.shared;

 @Factory()
 UiFactory<PriceRangeProps> PriceRange;

 @Props()
 class PriceRangeProps extends UiProps {

 }

 @State()
 class PriceRangeState extends UiState {
   
 }

 @Component()
 class PriceRangeComponent<T extends PriceRangeProps, S extends PriceRangeState> extends UiStatefulComponent<T, S> {
  render(){
    return (Dom.span()(
      (Dom.i()..className='fa fa-usd fa-lg')()
    ));
  }   
 }