part of over_react.web.features;

@Factory()
UiFactory<ActionControlsProps> ActionControls;

@Props()
class ActionControlsProps extends UiProps {
  
}

@Component()
class ActionControlsComponent extends UiComponent<ActionControlsProps> {
  @override
  render() {
    return Dom.div()(
      Dom.button()('Next place'),
      Dom.button()('Show route')
    );
  }
}