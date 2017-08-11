part of over_react.web.features;

@Factory()
UiFactory<AppContainerProps> AppContainer;

@Props()
class AppContainerProps extends UiProps {}

@State()
class AppContainerState extends UiState {}

@Component()
class AppContainerComponent<T extends AppContainerProps, S extends AppContainerState> extends UiStatefulComponent<T, S> {
  render() {
    return (Dom.div()(
      TopNav()(),
      (PlaceDetails()
        ..foodType='Mexican'
        ..rating=3.6  
        ..price=3
        ..distance=1.7)()
    ));
  }
}