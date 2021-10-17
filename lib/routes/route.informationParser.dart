import 'package:flutter/cupertino.dart';
import 'package:portfolio/providers/provider.navigator.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'routes.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  final BuildContext context;

  late PageNotifier notifier;
  AppRouteInformationParser({
    required this.context,
  }) {
    notifier = Provider.of<PageNotifier>(context);
  }

  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return AppRoutePath.work();
    }

    if (uri.pathSegments[0] == PageName.about.value) {
      notifier.changeScreen(PageName.about);
      return AppRoutePath.about();
    }

    if (uri.pathSegments[0] == PageName.contact.value) {
      notifier.changeScreen(PageName.contact);
      return AppRoutePath.contact();
    }

    if (uri.pathSegments[0] == PageName.bercelonaMetroRedesign.value) {
      return AppRoutePath.bercelonaMetroRedesign();
    }

    if (uri.pathSegments[0] == PageName.buyOnGoogle.value) {
      return AppRoutePath.buyOnGoogle();
    }

    if (uri.pathSegments[0] == PageName.googleShopping.value) {
      return AppRoutePath.googleShopping();
    }

    if (uri.pathSegments[0] == PageName.leveled.value) {
      return AppRoutePath.leveled();
    }

    if (uri.pathSegments[0] == PageName.loppetWinterFestival.value) {
      return AppRoutePath.loppetWinterFestival();
    }

    if (uri.pathSegments[0] == PageName.lucere.value) {
      return AppRoutePath.lucere();
    }

    if (uri.pathSegments[0] == PageName.oro.value) {
      return AppRoutePath.oro();
    }

    if (uri.pathSegments[0] == PageName.thrive.value) {
      return AppRoutePath.thrive();
    }

    if (uri.pathSegments[0] == PageName.visda.value) {
      return AppRoutePath.visda();
    }

    ///* `unkwon route`
    return AppRoutePath.unkwon();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isUnkwon) {
      return RouteInformation(location: '/404');
    }

    if (configuration.isAbout) {
      notifier.changeScreen(PageName.about);
      return PageName.about.location;
    }
    if (configuration.isContact) {
      notifier.changeScreen(PageName.contact);
      return PageName.contact.location;
    }

    //* work pagesInfo
    if (configuration.isBercelonaMetroRedesign) {
      return PageName.bercelonaMetroRedesign.location;
    }

    if (configuration.isBuyOnGoogle) {
      return PageName.buyOnGoogle.location;
    }

    if (configuration.isGoogleShopping) {
      return PageName.googleShopping.location;
    }

    if (configuration.isLeveled) {
      return PageName.leveled.location;
    }

    if (configuration.isLoppetWinterFestival) {
      return PageName.loppetWinterFestival.location;
    }

    if (configuration.isLucere) {
      return PageName.lucere.location;
    }

    if (configuration.isOro) {
      return PageName.oro.location;
    }

    if (configuration.isThrive) {
      return PageName.thrive.location;
    }

    if (configuration.isVisda) {
      return PageName.visda.location;
    }

    return RouteInformation(location: '/');
  }
}
