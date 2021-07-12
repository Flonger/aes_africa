package com.flonger.aes_africa;

import java.util.HashMap;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AesAfricaPlugin */
public class AesAfricaPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "aes_africa");
    channel.setMethodCallHandler(new AesAfricaPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else if(call.method.equals("getAesedString")) {
      HashMap keys = (HashMap) call.arguments;
      String key = (String) keys.get("string");
      result.success(AesUtil.getInstance().encrypt(key));
    }else if(call.method.equals("getMD5String")) {
      HashMap keys = (HashMap) call.arguments;
      String key = (String) keys.get("string");
      result.success(MD5Util.Encrypt(key));
    }else {
      result.notImplemented();
    }
  }








}



