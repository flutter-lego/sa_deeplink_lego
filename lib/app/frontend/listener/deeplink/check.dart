import 'package:easy_event_bus/easy_event_bus.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../../../../../../main.dart';
import '../../../backend/deeplink/check.dart';

Future<void> ReceiveCheckDeepLinkData(Check dto) async {
  print('dto: ${dto.toMap()}');
  // handle data here
}

@ReadyForListener()
Future<void> CheckDeepLinkListener(BuildContext context) async {
  EasyEventBus.on('receive_app_links_uri', (url) {
    Map<String, String> parameters = url.queryParameters;

    if (parameters['id'] != null && parameters['data'] != null && parameters['id'] == 'CheckDeepLink') {
      ReceiveCheckDeepLinkData(Check.fromDataString(parameters['data']!));
    }
  });
}
