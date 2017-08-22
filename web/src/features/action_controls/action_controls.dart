part of over_react.web.features;

@Factory()
UiFactory<ActionControlsProps> ActionControls;

@Props()
class ActionControlsProps extends UiProps {
  String dataLoadingText;
  dynamic nextBtnOnClickEvent;
}

@Component()
class ActionControlsComponent extends UiComponent<ActionControlsProps> {

  @override
  render() {
    return (Dom.div()..className = "row action-controls")(
        (Dom.div()..className = "col-xs-6")((Dom.button()
          ..addProp('data-loading-text', 'loading...', true)
          ..className = "btn-action btn btn-lg btn-default"
          ..onClick = (e) => (props.nextBtnOnClickEvent()))('Next')),
        (Dom.div()..className = "col-xs-6")((Dom.button()
          ..className =
              "btn-action btn btn-lg btn-primary pull-right")("Let's Go!")));
  }
}
