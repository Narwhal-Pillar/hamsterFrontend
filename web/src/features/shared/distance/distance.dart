part of over_react.web.features.shared;

@Factory()
UiFactory<DistanceProps> Distance;

@Props()
class DistanceProps extends UiProps {
  double distance;
}

@State()
class DistanceState extends UiState {

}

@Component()
class DistanceComponent<T extends DistanceProps, S extends DistanceState> extends UiStatefulComponent<T, S> {
  render() {
    return (Dom.span()('1 mile'));
  }
}
