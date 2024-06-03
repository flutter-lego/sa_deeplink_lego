import 'package:easy_event_bus/easy_event_bus.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../../../../../../main.dart';
import '../../../backend/deeplink/_new.dart';

Future<void> ReceiveNewDeepLinkData(New dto) async {
  // handle data here
}

@ReadyForListener()
Future<void> NewDeepLinkListener(BuildContext context) async {
  EasyEventBus.on('receive_app_links_uri', (url) {
    Map<String, String> parameters = url.queryParameters;

    if (parameters['id'] != null && parameters['data'] != null && parameters['id'] == 'NewDeepLink') {
      ReceiveNewDeepLinkData(New.fromDataString(parameters['data']!));
    }
  });
}
