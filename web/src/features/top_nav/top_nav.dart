part of over_react.web.features;

@Factory()
UiFactory<TopNavProps> TopNav;

@Props()
class TopNavProps extends UiProps {}

@State()
class TopNavState extends UiState {}

@Component()
class TopNavComponent<T extends TopNavProps, S extends TopNavState> extends UiStatefulComponent<T,S> {

  render() {
    return ((Dom.div()..className="text-center top-nav") (

        (Dom.img()..src="./src/images/hamster-logo.svg" ..className="nav-logo-image")(),
        (Dom.h1()..className="text-center nav-logo-text")("Hamster")
    ));
  }
}
