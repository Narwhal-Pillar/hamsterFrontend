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
    return (Dom.div()
      ..className="row action-controls"
    )(
      (Dom.div()..className="col-xs-6")(
        (Dom.button()
        ..className="btn-action btn btn-lg btn-default")
        ('Next')
      ),
      (Dom.div()..className="col-xs-6")(
        (Dom.button()
          ..className="btn-action btn btn-lg btn-primary pull-right")
        ("Let's Go!")
      )
    );
  }
}