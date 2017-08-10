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
    return (Dom.div() (
        Dom.h1()("Hamster")
    ));
  }
}