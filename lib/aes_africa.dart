import 'dart:async';

import 'package:flutter/services.dart';

class AesAfrica {
  static const MethodChannel _channel =
      const MethodChannel('aes_africa');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> getAesedString(String param) async{
    final String aesedString = await _channel.invokeMethod('getAesedString',
        {'string':param});
    return aesedString;
  }
  static Future<String> getMD5String(String param) async{
    final String md5String = await _channel.invokeMethod('getMD5String',
        {'string':param});
    return md5String;
  }



}
