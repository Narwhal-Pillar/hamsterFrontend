part of over_react.web.features.shared;

@Factory()
UiFactory<BannerProps> Banner;

@Props()
class BannerProps extends UiProps {
  dynamic restaurantName;
  String imageUrl;
}

@State()
class BannerState extends UiState {

}

@Component()
class BannerComponent<T extends BannerProps, S extends BannerState> extends UiStatefulComponent<T,S> {
  render() {

    var divStyle = {
      'backgroundImage': "url(${this.props.imageUrl})"
    };

    return ((Dom.div()
      ..name="banner"
      ..style=divStyle
      ..className="banner"
      )(
        ((Dom.h1()..className="text-center banner-title")(this.props.restaurantName))
      ));
  }
}