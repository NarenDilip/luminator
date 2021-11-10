import 'package:flutter/material.dart';
import 'package:luminator/src/constants/const.dart';
import 'package:luminator/src/tb/model/login_models.dart';
import 'package:luminator/src/tb/thingsboard_client_base.dart';
import 'package:luminator/src/utils/utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login_thingsboard {
  static Future<bool> callThingsboardLogin(BuildContext context, String username,String password) async {
    try {
      Utility.progressDialog(context);
      var tbClient = ThingsboardClient(serverUrl);
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final smartToken =
      await tbClient.login(LoginRequest(smart_Username, smart_Password));
      if (smartToken.token != null) {
        prefs.setString('smart_token', smartToken.token);
        prefs.setString('smart_refreshtoken', smartToken.refreshToken);
      }
    } catch (e) {
      return false;
    }
    return true;
  }
}