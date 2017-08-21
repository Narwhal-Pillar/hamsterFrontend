part of over_react.web.features;

@Factory()
UiFactory<ActionControlsProps> ActionControls;

@Props()
class ActionControlsProps extends UiProps {
  // Props go here, declared as fields:
  bool isDisabled;
  Iterable<String> items;
}

@Component()
class ActionControlsComponent extends UiComponent<ActionControlsProps> {
  @override
  render() {
    return Dom.div()(Dom.h3()('Action Controls'));
  }
}