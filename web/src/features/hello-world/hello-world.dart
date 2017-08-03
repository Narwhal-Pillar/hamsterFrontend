part of over_react.web.features;

@Factory()
UiFactory<HelloWorldProps> HelloWorld;

@Props()
class HelloWorldProps extends UiProps {
  String message;
}

@State()
class HelloWorldState extends UiState {

}

@Component()
class HelloWorldComponent<T extends HelloWorldProps, S extends HelloWorldState> extends UiStatefulComponent<T, S> {
  render() {
    return ( Dom.h1()(props.message) );
  }
}
