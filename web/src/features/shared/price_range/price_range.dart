 part of over_react.web.features.shared;

 @Factory()
 UiFactory<PriceRangeProps> PriceRange;

 @Props()
 class PriceRangeProps extends UiProps {
  int priceRange;
 }

 @State()
 class PriceRangeState extends UiState {
  
 }

 @Component()
 class PriceRangeComponent<T extends PriceRangeProps, S extends PriceRangeState> extends UiStatefulComponent<T, S> {
  render(){
     List priceRangeOutput = [];
    for (var i = 0; i < this.props.priceRange; i++){
      priceRangeOutput.add((Dom.i()..className='fa fa-usd'..key=i)());
    }
    return (Dom.span()(
      priceRangeOutput
    ));
  }   
 }