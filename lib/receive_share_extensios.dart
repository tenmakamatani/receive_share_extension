
import 'dart:async';

import 'package:flutter/services.dart';

class ReceiveShareExtensios {
  static const MethodChannel _channel =
      const MethodChannel('receive_share_extensios');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
