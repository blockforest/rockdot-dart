part of acanvas_framework.ugc;

class GamingCheckPermissionToPlayLocaleCommand extends AbstractUGCCommand {
  @override
  void execute([AcSignal event = null]) {
    super.execute(event);

    Map dto = {
      'uid': _ugcModel.userDAO.uid,
      'locale': AcConstants.LANGUAGE + "_" + AcConstants.MARKET
    };

    amfOperation("GamingEndpoint.checkPermissionToPlayLocale", map: dto);
  }

  @override
  bool dispatchCompleteEvent([dynamic result = null]) {
    _ugcModel.gaming.allowedToPlay = result;
    return super.dispatchCompleteEvent(_ugcModel.gaming.allowedToPlay);
  }
}
